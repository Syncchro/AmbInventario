package br.com.synchro.ambinventario

class Usuario {
	
    String solicitante
	String projetoArea
	Usuario objSolicitante
	
    static constraints = {
		solicitante(blank:false , maxSize:50 , unique:true , minSize:3)
		projetoArea(blank:false , maxSize:30 , unique:true)
		
    }
}
