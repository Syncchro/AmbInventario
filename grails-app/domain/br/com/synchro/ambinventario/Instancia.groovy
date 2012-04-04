package br.com.synchro.ambinventario

class Instancia {

	String instancia
	String obsInstancia
	Integer espacoUtilizado = 0
	Ambiente objAmbiente
	Software objSoftware
	Solicitante objSolicitante
	
    static belongsTo = [Ambiente,Software, Solicitante] 
    static optionals = ["obsInstancia"]
    
	static constraints = {
		instancia(blank:false)
		obsInstancia(nullable:true)
		objAmbiente(nullable:false)
		objSoftware(nullable:true)
		espacoUtilizado(nullable:true)
		objSolicitante(nullable:false,blank:false)
    }

	public String toString() {
		instancia
	}
	
}
