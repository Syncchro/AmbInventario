package br.com.synchro.ambinventario

class Instancia {

	String nome
	String observacao
	Integer ram = 0
	String urlConsole
	Date dataInicio
	Date dataFim
	Software software
	Solicitante solicitante
	transient String periodoDeUso
	
    static belongsTo = [Software, Solicitante] 
    
	static constraints = {
		nome(blank:false)
		observacao(nullable:true)
		urlConsole(nullable:true)
		software(nullable:true)
		ram(nullable:true)
		solicitante(nullable:false,blank:false)
		dataInicio(nullable:true)
		dataFim(nullable:true)		
    }

	public String toString() {
		nome
	}
	
	/**
	 * Retorna o período já formatado, de acordo com as datas de início e fim.
	 * @return
	 */
	public String getPeriodoDeUso(){
		return (dataInicio && dataFim)? "${dataInicio?.format('dd/MM/yyyy')} a ${dataFim?.format('dd/MM/yyyy')}" : ""
	}
}
