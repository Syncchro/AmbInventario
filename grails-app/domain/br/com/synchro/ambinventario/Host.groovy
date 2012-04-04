package br.com.synchro.ambinventario

class Host {
	
    String nome
	Local objLocal
	SO objSO
	String usuarioSO
	String senhaSO
	
	static belongsTo = [Local,SO]
	static hasMany = [ambiente:Ambiente]
	
    static constraints = {
		nome(blank:false , maxSize:50 , unique:true , minSize:5)
		objLocal (nullable:true)
		objSO(nullable:false,blank:false)
		usuarioSO(nullable:true)
		senhaSO(nullable:true)
    }
	
	public String toString() {
		nome
	}
}
