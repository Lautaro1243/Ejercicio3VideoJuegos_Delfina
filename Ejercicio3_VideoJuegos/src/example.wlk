object delfina {
	
	var nivelDeDiversion = 0
	var consolaEnMano = play
	
	method agarrar(consola){
		consolaEnMano = consola
	}
	
	method jugar(videojuego) {
		nivelDeDiversion = nivelDeDiversion + videojuego.diversion()
		consolaEnMano.usar()
		return nivelDeDiversion
	}
	method jugabilidadDeTuConsola() {
		return consolaEnMano.jugabilidad()
	}
	
	method diversion(){
		return nivelDeDiversion
	} 
}


object play {
	
	method jugabilidad(){
		return 10
	}
	
	method usar(){
		
	} 
	
}

object portatil {
	
	var bateriaBaja = false 
	
	method jugabilidad(){
		var salida = 8
		if (bateriaBaja) {
			salida = 1	
		}
		return salida
	}
	
	method usar(){
		bateriaBaja = true
	} 
	
}


object arkanoid {
	method diversion() {
		return 50
	}
	
}

object mario {
	
	method diversion() {
		return if(delfina.jugabilidadDeTuConsola() > 5) 100 else 15
	}
	
}

object pokemon {
	method diversion(){
		return delfina.jugabilidadDeTuConsola() * 10
	}
}