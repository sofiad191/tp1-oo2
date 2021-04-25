running
setUp
	votos := OrderedCollection new.
	us1 := Usuario conNombre: 'Juan' conEmail: 'juan@gmail.com' yContraseña: 'contraseña'.
	us2 := Usuario conNombre: 'Pepe' conEmail: 'pepe@gmail.com' yContraseña: 'pepe123'.
	top1 := Topico
		conNombre: 'Smalltalk'
		yDescripcion: 'Lenguaje de Programacion'.
	top2 := Topico
		conNombre: 'JavaScript'
		yDescripcion: 'Lenguaje de programacion'.
	preg1 := Pregunta
		conTitulo: 'Desarrollo de Pagina web con Smalltalk(Seaside)'
		conDescripcion: 'Problemas con la implementacion de los componentes'
		conTopicos: top1 nombre
		yUsuario: us2.
	preg2 := Pregunta
		conTitulo: 'Desarrollo de Pagina web con Javacript'
		conDescripcion: 'Como empezar'
		conTopicos: top2 nombre
		yUsuario: us1.
	res1 := us2 agregarRespuestaConTexto: '..' yPregunta: preg1.
	res2 := us1 agregarRespuestaConTexto: '..' yPregunta: preg2