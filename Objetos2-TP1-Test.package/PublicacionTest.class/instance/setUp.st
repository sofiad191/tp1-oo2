running
setUp
	votos := OrderedCollection new.
	us1 := Usuario conNombre: 'Juan' yContraseña: 'contraseña'.
	us2 := Usuario conNombre: 'Pepe' yContraseña: 'pepe123'.
	top1 := Topico
		conNombre: 'Smalltalk'
		yDescripcion: 'Lenguaje de Programacion'.
	top2 := Topico
		conNombre: 'JavaScript'
		yDescripcion: 'Lenguaje de programacion'.
	preg1 := us1
		agregarPreguntaConTitulo: 'Desarrollo de Pagina web con Smalltalk(Seaside)'
		conDescripcion: 'Problemas con la implementacion de los componentes'
		yTopicos: top1.
	preg2 := us2
		agregarPreguntaConTitulo: 'Desarrollo de Pagina web con Javacript'
		conDescripcion: 'Como empezar'
		yTopicos: top2.
	res1 := us2 agregarRespuestaConTexto: '..' yPregunta: preg1.
	res2 := us1 agregarRespuestaConTexto: '..' yPregunta: preg2