package ambivent

class SistemasOperacionais {

	String SO;
	String descricaoSO;

	static hasMany = [objAmbiente:Ambientes]

    static constraints = {
		SO(blank:false , maxSize:100 , unique:true , minSize:3)
    }
	
	public String toString() {
		SO
	}
	
}
