package br.com.synchro.ambinventario

class SO {
	
	String so;
	String descricaoSO;
	
	static hasMany = [ambientes:Ambiente]
	
    static constraints = {
		so(blank:false , maxSize:100 , unique:true , minSize:3)
    }
	
	public String toString() {
		so
	}
	
}
