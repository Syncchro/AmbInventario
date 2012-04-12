package br.com.synchro.ambinventario

class Solicitante {
	
    String solicitante
	String projetoArea
	String email
	String telefone
	
	static hasMany = [instancias:Instancia]
	
    static constraints = {
		solicitante(blank:false , maxSize:50 , unique:true , minSize:3)
		projetoArea(blank:false , maxSize:30 , unique:true)
		email(blank:true , maxSize:70 , unique:true, email:true, nullable:true)
		telefone(blank:true , maxSize:30 , unique:true, nullable:true)
	}
	
	public String toString(){
		solicitante
	}
}
