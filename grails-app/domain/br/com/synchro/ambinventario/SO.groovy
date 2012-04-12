package br.com.synchro.ambinventario

class SO {
	
	String so;
	
	static hasMany = [hosts:Host]
	
    static constraints = {
		so(blank:false , maxSize:100 , unique:true , minSize:3)
    }
	
	public String toString() {
		so
	}
	
}
