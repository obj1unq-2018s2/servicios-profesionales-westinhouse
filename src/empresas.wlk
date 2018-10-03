import profesionales.*
import universidades.*
import empresas.*
import solicitantes.*



class Empresa {
	
	var property profesionalesContratados = null
	//Esta variable se setea con todos los profesionales que tiene la empresa en planta.
	
	var property honorariosDeReferencia = null
	//Esta variable se setea con el honorario de referencia de la empresa.
	
    //method profesionalesContratados(){ return profesionalesContratados}
	//method profesionalesContratados(profesionales) { profesionalesContratados = profesionales}
	
	method profesionalesCaros(){
		return profesionalesContratados.filter( {profesional => profesional.honorariosPorHora() > honorariosDeReferencia} )
	}
	
	method universidadesFormadoras(){
		return profesionalesContratados.map( {profesional => profesional.universidad()} )
	}
	
	method profesionalMasBarato(){
		var sueldosEmpleados = profesionalesContratados.map( {profesional => profesional.honorariosPorHora()} )
		return sueldosEmpleados.min()
	}
	
	method provinciaEstaCubierta(provincia){
		 var provinciasCubiertas = profesionalesContratados.map( {profesional => profesional.provinciasDondePuedeTrabajar()} )	
		 provinciasCubiertas.flatten()
		 return provinciasCubiertas.contains(provincia)
	}
	
	
	
	//Etapa 3
	
	method satisfacerCliente(cliente){
			//	return self.universidades().any( {universidad => cliente.lugaresHabilitadosParaLaAtencion().contains( }
		return cliente.lugaresHabilitadosParaLaAtencion().any( { lugar => self.provinciaEstaCubierta(lugar)} )
	}
	
	
	
	
	
	
	
	
}
