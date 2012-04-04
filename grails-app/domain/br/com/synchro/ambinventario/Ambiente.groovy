package br.com.synchro.ambinventario

import br.com.synchro.ambinventario.TipoAmbiente;

class Ambiente {

	String ambiente
	String instrucaoAdicionais
	String descricaoAmbiente
	TipoAmbiente fisicaVirtual
	String urlConsole
	String usuarioConsole
	String senhaConsole
	Integer memoriaTotal
	String obsAmbiente
	Host objHost
	Integer memoriaRestante = 0

    static belongsTo = [Host] 
	static hasMany = [instancias:Instancia]
	static optionals = ["obsAmbiente","instrucaoAdicionais"]
    static transients = ["memoriaRestante"]
	
	static constraints = {
		ambiente(blank:false , maxSize:50 , unique:true , minSize:3)
		urlConsole(blank:false , maxSize:50 , unique:true , minSize:3)
		instrucaoAdicionais(maxSize:150 , unique:true, nullable:true)
		fisicaVirtual(nullable:false) 
		objHost(nullable:true)
		obsAmbiente(nullable:true)
		senhaConsole(nullable:true)
		usuarioConsole(nullable:true)
		memoriaTotal(nullable:true)
		descricaoAmbiente(nullable:true)
		urlConsole(nullable:true)
    }

	public String toString() {
		ambiente
	}
	
	public Integer getMemoriaRestante(){
		def espacoUtilizado = 0
		for(instancia in instancias){
			espacoUtilizado += instancia.espacoUtilizado?:0
		}
		((memoriaTotal?:0) - espacoUtilizado)
	}

}
