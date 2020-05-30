object farolito{
	method peso(){
		return 0.5
	}
	
	method esLuminoso(){
		return true
	}
	
	method carga(){
		return 0
	}
}

object canasto{
	var property volumen 
	
	method peso(){
		return volumen / 10
	}
	
	method carga(){
		return volumen * 2 
	}
	
	method esLuminoso(){
		return false
	}
}

object morralDeBici{
	var property largo
	var property tieneOjoDeGato
	
	method peso(){
		return 1.2
	}
	method carga(){
		return largo / 3
	}
		
	method esLuminoso(){
		return tieneOjoDeGato
	}
}
/*				EJERCICIO 5
 * 
 * 1- ¿Qué agregados o cambios deberían hacerse para agregar un nuevo tipo de accesorio?
 * 
 * -  Para agregar un nuevo tipo de accesorio no hay que realizar cambios, solo habria que crear
 *  	un objeto nuevo del cual se quiere implementar. Respetando el polimorfismo con los demas objetos,
 * 	 		que en este caso son el peso, el largo y si es luminoso o no.
 * 	
 */