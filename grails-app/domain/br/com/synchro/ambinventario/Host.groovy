package br.com.synchro.ambinventario

class Host {
	
    String nome
	Local local
	SO so
	String usuarioSO
	String senhaSO
	Integer ram
	Integer disco
	Boolean fisico
	transient Integer memoriaRestante
		
	static belongsTo = [Local,SO]
	static hasMany = [softwares:Software, ambientes:Ambiente]
	
    static constraints = {
		nome(blank:false , maxSize:50 , unique:true , minSize:5)
		local (nullable:true)
		so(nullable:false,blank:false)
		usuarioSO(nullable:true)
		senhaSO(nullable:true)
		ram(nullable:true)
		disco(nullable:true)
		fisico(nullable:true)
    }
	
	public String toString() {
		nome
	}
	
	/**
	 * Calcula o restante de memória disponível no host.
	 * @return
	 */
	public Integer getMemoriaRestante(){
		def espacoUtilizado = 0
		for(software in softwares){
			for(instancia in software.instancias){
				espacoUtilizado += instancia.ram?:0
			}
		}
		((ram?:0) - espacoUtilizado)
	}
}
