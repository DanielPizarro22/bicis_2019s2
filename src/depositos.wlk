import bicis.*
import accesorios.*
import marcas.*

object depositoDeBicis {
	const  deposito = []
	
	method agregarBici(bicicleta){
		deposito.add(bicicleta)
	}
	
	method quitarBici(bicicleta){
		deposito.remove(bicicleta)
	}
	
	method bicisRapidas(){
		return deposito.filter({ bici => bici.velocidadDeCrucero() > 25})
	}
	
	method marcasDeLasBicis(){
		return deposito.map({ bici => bici.marca()}).asSet()
	}
	
	method esNocturno(){
		return deposito.all({ bici => bici.tieneLuz()})
	}
	
	method cargaExtraPeso(cantidad){
		return deposito.any({ bici => bici.carga() > cantidad})
	}
	
	method marcaBiciMasRapida(){
		return self.bicisRapidas().max().marca()
	}
	
	method cargaTotalDeBicisLargas(){
		return deposito.filter({ bici => bici.largo() > 170}).sum({ bici => bici.carga()})
	}
	
	method bicisSinAccesorios(){
		return deposito.count({ bici => bici.carga() == 0})
	}
	
	method bicisCompanierasDe_(unaBici){
		return deposito.find({ bici => bici.marca() == unaBici.marca() and bici.largo() - unaBici.largo() < 10 and bici != unaBici})
	}
}