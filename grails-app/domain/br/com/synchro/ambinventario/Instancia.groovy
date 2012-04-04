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
		obsInstancia(nullable:true)
		objAmbiente(nullable:false)
		objSoftware(nullable:true)
		espacoUtilizado(nullable:true)
    }

	public String toString() {
		instancia
	}
	
}
