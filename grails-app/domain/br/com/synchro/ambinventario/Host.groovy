package br.com.synchro.ambinventario

class Host {
	
	
    String nome
	Locais objLocais
	
	static belongsTo = [Locais]
	static hasMany = [ambiente:Ambientes]
	
    static constraints = {
		nome(blank:false , maxSize:50 , unique:true , minSize:5)
    }
}
