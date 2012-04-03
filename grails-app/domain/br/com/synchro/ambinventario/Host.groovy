package br.com.synchro.ambinventario

class Host {
	
	
    String nome
	
	
	static belongsTo = [Host,Locais]
	static hasMany = [ambiente:Ambientes]
	
    static constraints = {
		nome(blank:false , maxSize:50 , unique:true , minSize:5)
    }
}
