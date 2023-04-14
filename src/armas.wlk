import jugadoresPersonajes.*
import elementos.*


object ballesta {
	var flechas = 10
	
	method flechas() = flechas
	
	method potencia() {
		return 4
	} 
	
	method estaCargada() {
		return flechas > 0
	}
	
	method registrarUso() {
		flechas = (flechas - 1).max(0) 
	}
}

object jabalina {
	var cargada = true
	
	method potencia() = 30
	
	method estaCargada() {
		return cargada
	}
	
	method registrarUso() {
		cargada = false
	}	
	
}
