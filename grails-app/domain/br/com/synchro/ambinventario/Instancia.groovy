package br.com.synchro.ambinventario

class Instancia {

	String instancia
	String obsInstancia
	
	Integer espacoUtilizado
	
	Ambiente objAmbiente
	Software objSoftware
	
	

    static belongsTo = [Ambiente,Software] 
    static hasMany =[objSolicitante:Solicitante] 
	static optionals = ["obsInstancia"]
    
	static constraints = {
		instancia(blank:false)
		objAmbiente(nullable:false)
		objSoftware(nullable:false)
		objSolicitante(nullable:false)
    }

	public String toString() {
		instancia
	}
	
}
