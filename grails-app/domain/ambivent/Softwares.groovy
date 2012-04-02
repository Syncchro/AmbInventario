package ambivent

class Softwares {

	String software;
	String descricaoSoftware;

	static hasMany = [objInstancia:Instancias]

    static constraints = {
		software(blank:false , unique:true , minSize:3)
    }
	
	public String toString() {
		software
	}
	
}
