package br.com.synchro.ambinventario

import br.com.synchro.ambinventario.TipoAmbiente;

class Ambientes {

	String ambiente
	String descricaoAmbiente
	TipoAmbiente fisicaVirtual
	/*
	 * Fisica = true;
	 * Virtual = false;
	 */
	Integer memoriaTotal
	//Em megabytes, apenas numeros inteiros
	String obsAmbiente
	Locais objLocal
	SistemasOperacionais objSO

    static belongsTo = [Locais,SistemasOperacionais] 
	static hasMany = [objInstancia:Instancias]
	static optionals = ["obsAmbiente"]
    
	static constraints = {
		ambiente(blank:false , maxSize:50 , unique:true , minSize:3)
		fisicaVirtual(nullable:false) 
		objLocal(nullable:false)
		objSO(nullable:false)
    }

	public String toString() {
		ambiente
	}

}
