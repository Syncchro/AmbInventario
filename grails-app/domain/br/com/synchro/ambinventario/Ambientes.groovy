package br.com.synchro.ambinventario

import br.com.synchro.ambinventario.TipoAmbiente;

class Ambientes {

	String ambiente
	String instrucaoAdicionais
	String descricaoAmbiente
	TipoAmbiente fisicaVirtual
	String urlConsole
	String UsuarioConsole
	Integer senhaConsole
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
		URLConsole(blank:false , maxSize:50 , unique:true , minSize:3)
		instrucaoAdicionais(blank:false , maxSize:150 , unique:true , minSize:10)
		fisicaVirtual(nullable:false) 
		objLocal(nullable:false)
		objSO(nullable:false)
    }

	public String toString() {
		ambiente
	}

}
