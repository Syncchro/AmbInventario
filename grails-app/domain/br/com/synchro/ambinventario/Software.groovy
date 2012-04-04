package br.com.synchro.ambinventario

class Software {

	String software;
	String descricaoSoftware;

	static hasMany = [objInstancia:Instancia]

    static constraints = {
		software(blank:false , unique:true , minSize:3)
		descricaoSoftware(nullable:true)
    }
	
	public String toString() {
		software
	}
	
}
