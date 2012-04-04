package br.com.synchro.ambinventario

class SO {
	
	String so;
	String descricaoSO;
	
	static hasMany = [ambientes:Ambiente, hosts:Host]
	
    static constraints = {
		so(blank:false , maxSize:100 , unique:true , minSize:3)
		descricaoSO(nullable:true)
    }
	
	public String toString() {
		so
	}
	
}
