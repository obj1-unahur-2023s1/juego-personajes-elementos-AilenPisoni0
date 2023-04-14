import jugadoresPersonajes.*
import armas.*

object castillo {
	var property nivelDeDefensa = 150
	
	method altura() = 20
	
	method valorQueOtorga() = nivelDeDefensa / 5
	
	method recibirAtaque(potencia) {
		nivelDeDefensa = 0.max(nivelDeDefensa - potencia)
	}
	
	method recibirTrabajo() {
		nivelDeDefensa = (nivelDeDefensa + 20).min(200) 
	}
}

object aurora {
	var property estaViva = true
	
	method altura() = 1
	
	method recibirAtaque(potencia) {
		estaViva = not (potencia >= 10)
	}
	
	method valorQueOtorga() {
		return 15
	}
	
	method recibirTrabajo() {}
}

object tipa {
	var altura = 8
	
	method valorQueOtorga() = altura * 2

	method altura() = altura
	
	method cambiarAltura(unaAltura) {
		altura = unaAltura
	}
	
	method recibirAtaque(potencia) {
		
	}	
	
	method recibirTrabajo() {
		altura ++
	}
	
}
