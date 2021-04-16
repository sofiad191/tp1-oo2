running
setUp
	us1 := Usuario conNombre: 'Juan' yContraseña: 'contraseña'.
	us2 := Usuario conNombre: 'Pepe' yContraseña: 'pepe123'.
	
	top1 := Topico
		conNombre: 'Smalltalk'
		yDescripcion: 'Lenguaje de Programacion'.
	top2 := Topico
		conNombre: 'JavaScript'
		yDescripcion: 'Lenguaje de programacion'.
		
	preg1 := Pregunta
		conTitulo: 'Desarrollo de Pagina web con Smalltalk(Seaside)'
		descripcion: 'Problemas con la implementacion de los componentes'
		yTopicos: top1.
	us1 agregarPregunta: preg1.
	
	preg2 := Pregunta
		conTitulo: 'Desarrollo de Pagina web con Javacript'
		descripcion: 'Como empezar'
		yTopicos: top2.
	us2 agregarPregunta: preg2