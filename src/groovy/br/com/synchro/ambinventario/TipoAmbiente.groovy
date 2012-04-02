package br.com.synchro.ambinventario

enum TipoAmbiente {
	FISICO("Fisico") , VIRTUAL("Virtual")
	
	String descricao;
	
	private TipoAmbiente(String descricao){
		this.descricao = descricao
	}
	
	@Override
	public String toString() {
		return this.descricao
	}
}
