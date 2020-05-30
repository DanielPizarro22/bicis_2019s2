import accesorios.*
import marcas.*

class Bicicleta{
	var property rodado
	var property largo
	var property marca 
	const accesorios = []
	
	method agregarAccesorio(accesorioAAgregar){
		accesorios.add(accesorioAAgregar)
	}
	
	method altura(){
		return rodado * 2.5 + 15
	}
	
	method velocidadDeCrucero(){
		return if(largo > 120){rodado + 6} else {rodado + 2} 
	}
	
	method carga(){
		return accesorios.sum({ carg => carg.carga()})
	}
	
	method peso(){
		return rodado / 2 + self.pesoTotalDeAccesorios()
	}
	
	method  pesoTotalDeAccesorios(){
		return accesorios.sum({pesos => pesos.peso()})
	}
	
	method tieneLuz(){
		return accesorios.any({acc => acc.esLuminoso()})
	}
	
	method poseeAccesorioLiviano(){
		return accesorios.count({acc => acc.peso() < 1})
	}
}