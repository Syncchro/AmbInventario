package br.com.synchro.ambinventario

class Local {

	String local;
	String descricaoLocal;

	static hasMany = [hosts:Host]

    static constraints = {
		local(blank:false , maxSize:100 , unique:true , minSize:3)
    }
	
	public String toString() {
		local
	}
	
}
