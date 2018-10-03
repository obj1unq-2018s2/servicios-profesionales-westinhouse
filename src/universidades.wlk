class Universidad  {
	
	var property honorarios 
	//Esta variable se setea con los honorarios sugeridos por la universidad
	
	var property provincia
	//Esta variable se setea con la provincia donde se halla la universidad.
	
	//Etapa 2
	var donativos = 0
	//Esta variable administra las donaciones hechas por los profesionales vinculados a la institucion
		

	method ubicacion(){
		//Retorna la provincia dónde se encuentra emplazada la universidad
		return provincia
	}	
	
	method honorariosRecomendados(){
		//Retorna los honorarios recomendados para los profesionales egresados
		return honorarios
	}
	
	//Etapa 2
	
	method donativos(donaciones){
		donativos += donaciones
	}
	
	method donativos(){ return donativos}
	

}
