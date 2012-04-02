package br.com.synchro.ambinventario

class Instancias {

	String instancia
	String obsInstancia
	String solicitante
	Integer espacoUtilizado
	
	Ambientes objAmbiente
	Softwares objSoftware

    static belongsTo = [Ambientes,Softwares] 

	static optionals = ["obsInstancia"]
    
	static constraints = {
		instancia(blank:false)
		objAmbiente(nullable:false)
		objSoftware(nullable:false)
    }

	public String toString() {
		instancia
	}
	
}
