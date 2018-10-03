import asociacion_profesionales_litoral.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
	
	//Etapa 2
	
	method donativo(){
		asociacionProfesionalesDelLitoral.donativos(self.honorariosPorHora())
		
	}
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	//Métodos que faltan
	method honorariosPorHora() { return universidad.honorariosRecomendados() }
	method provinciasDondePuedeTrabajar(){ return  #{universidad.ubicacion()} }
	
	//Etapa 2
	
	method donativo(){
		universidad.donativos(self.honorariosPorHora() / 2) 
	}
	
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	
	var universidad
	//Atributos que faltan
	var property provinciasHabilitadas
	var property honorarios 
	
	//Atributos Etapa 2
	var fondos = 0
	//Esta variable administra el dinero recaudado por el profesional
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	//Métodos que faltan
	method provinciasDondePuedeTrabajar() { return #{provinciasHabilitadas} }
	method honorariosPorHora() { return honorarios}
	
	
	//Etapa 2
	
	method fondos(cantidad){
		fondos += cantidad
	}
	
	method fondos(){ return fondos}
	
	method pasarDinero(alguien, cantidadDinero){
		if(cantidadDinero <= self.fondos()){
			alguien.fondos(cantidadDinero)
			self.fondos() -= cantidadDinero
		}
		
	
	}
	
	
	
	
	
	
	
	
	
}
