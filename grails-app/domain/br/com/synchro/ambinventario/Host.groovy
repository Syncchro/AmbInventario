package br.com.synchro.ambinventario

class Host {
	
	
    String nome
	Local objLocais
	
	static belongsTo = [Local]
	static hasMany = [ambiente:Ambiente]
	
    static constraints = {
		nome(blank:false , maxSize:50 , unique:true , minSize:5)
    }
}
