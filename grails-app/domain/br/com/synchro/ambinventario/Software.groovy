package br.com.synchro.ambinventario

class Software {

	String software;
	String versao;

	static hasMany = [instancias:Instancia, ambientes:Ambiente]

    static constraints = {
		software(blank:false , minSize:3, nullable:false)
		versao(blank:false, nullable:false)
    }
	
	public String toString() {
		"${software} ${versao}"
	}
	
	def instanciaList = { host ->
		def insts = []
		if(host){
			for(Instancia instancia in this.instancias){
				if(instancia.host.id.equals(host.id)){
						insts.add(instancia)
				}
			}
		} else {
			insts = this.instancias
		}
		insts
	}
}
