class Persona {
	
		var property provincia 
		//Esta variable se setea con la provincia de residencia de la persona
	
	    method provinciaDeResidencia(){ return provincia }
	    
	    method lugaresHabilitadosParaLaAtencion(){ return [provincia]}
	 
	
}

class Institucion {
	
	var property universidades
	//Esta variable se setea con las universidades que reconoce la institucion
	
	method universidadesReconocidas(){ return universidades}
	//Se que este metodo parece redundante teniendo arriba una variable con property que hace 
	//algo muy similar, pero a veces es necesario tener un metodo que solo devuelva algo 
	// y que no permita setear datos, y que sea distinto de la variable que permite hacer ambas cosas.
	// Lo comprobe mientras hacia los tests de la etapa 1
	
	method lugaresHabilitadosParaLaAtencion(){ 
		return self.universidadesReconocidas().map( {universidad => universidad.ubicacion()})
	}
	

}