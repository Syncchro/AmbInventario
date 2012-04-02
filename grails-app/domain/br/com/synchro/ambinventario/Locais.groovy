package br.com.synchro.ambinventario

class Locais {

	String local;
	String descricaoLocal;
	Ambientes objAmbiente

	static hasMany = [objAmbiente:Ambientes]

    static constraints = {
		local(blank:false , maxSize:100 , unique:true , minSize:3)
    }
	
	public String toString() {
		local
	}
	
}
