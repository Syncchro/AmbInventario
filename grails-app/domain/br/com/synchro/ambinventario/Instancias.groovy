package br.com.synchro.ambinventario

class Instancias {

	String instancia
	String obsInstancia
	
	Integer espacoUtilizado
	
	Ambientes objAmbiente
	Softwares objSoftware
	
	

    static belongsTo = [Ambientes,Softwares] 
    static hasMany =[objSolicitante:Usuario] 
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
