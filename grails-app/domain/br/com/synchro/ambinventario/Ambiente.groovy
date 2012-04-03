package br.com.synchro.ambinventario

import br.com.synchro.ambinventario.TipoAmbiente;

class Ambiente {

	String ambiente
	String instrucaoAdicionais
	String descricaoAmbiente
	TipoAmbiente fisicaVirtual
	String urlConsole
	String usuarioConsole
	Integer senhaConsole
	/*
	 * Fisica = true;
	 * Virtual = false;
	 */
	Integer memoriaTotal
	//Em megabytes, apenas numeros inteiros
	String obsAmbiente
	Host objHost

    static belongsTo = [Host] 
	static hasMany = [instancias:Instancia]
	static optionals = ["obsAmbiente"]
    
	static constraints = {
		ambiente(blank:false , maxSize:50 , unique:true , minSize:3)
		urlConsole(blank:false , maxSize:50 , unique:true , minSize:3)
		instrucaoAdicionais(blank:false , maxSize:150 , unique:true)
		fisicaVirtual(nullable:false) 
		objHost(nullable:true)
    }

	public String toString() {
		ambiente
	}

}
