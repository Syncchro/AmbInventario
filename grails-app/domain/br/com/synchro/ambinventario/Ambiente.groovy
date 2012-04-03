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
	Integer memoriaTotal
	String obsAmbiente
	Host objHost

    static belongsTo = [Host] 
	static hasMany = [instancias:Instancia]
	static optionals = ["obsAmbiente","instrucaoAdicionais"]
    
	static constraints = {
		ambiente(blank:false , maxSize:50 , unique:true , minSize:3)
		urlConsole(blank:false , maxSize:50 , unique:true , minSize:3)
		instrucaoAdicionais(maxSize:150 , unique:true, nullable:true)
		fisicaVirtual(nullable:false) 
		objHost(nullable:true)
		obsAmbiente(nullable:true)
    }

	public String toString() {
		ambiente
	}

}
