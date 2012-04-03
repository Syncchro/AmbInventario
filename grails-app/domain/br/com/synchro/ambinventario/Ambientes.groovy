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
	Host objHosts

    static belongsTo = [Host] 
	static hasMany = [objInstancia:Instancias]
	static optionals = ["obsAmbiente"]
    
	static constraints = {
		ambiente(blank:false , maxSize:50 , unique:true , minSize:3)
		urlConsole(blank:false , maxSize:50 , unique:true , minSize:3)
		instrucaoAdicionais(blank:false , maxSize:150 , unique:true , minSize:10)
		fisicaVirtual(nullable:false) 
    }

	public String toString() {
		ambiente
	}

}
