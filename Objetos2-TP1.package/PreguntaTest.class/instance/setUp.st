running
setUp
	coleccionTopicos1 := OrderedCollection new.
	coleccionTopicos2 := OrderedCollection new.
	usuario1 := Usuario
		conNombre: 'Juan'
		conEmail: 'juan@gmail.com'
		yContraseña: 'contraseña'.
	usuario2 := Usuario
		conNombre: 'Pepe'
		conEmail: 'pepe@gmail.com'
		yContraseña: 'pepe123'.
	topico1 := Topico conNombre: 'Smalltalk' yDescripcion: '..'.
	topico2 := Topico conNombre: 'Seaside' yDescripcion: '..'.
	topico3 := Topico conNombre: 'JavaScript' yDescripcion: '..'.
	topico4 := Topico conNombre: 'Paginas web' yDescripcion: '..'.
	coleccionTopicos1 add: topico1.
	coleccionTopicos1 add: topico2.
	coleccionTopicos1 add: topico3.
	coleccionTopicos2 add: topico3.
	coleccionTopicos2 add: topico4.
	
	
	pregunta1 := Pregunta
		conTitulo: 'Desarrollo de Pagina web con Smalltalk(Seaside)'
		conDescripcion: 'Problemas con la implementacion de los componentes'
		conTopicos: coleccionTopicos1
		yUsuario: usuario1.
	usuario1 agregarPregunta: pregunta1.
	pregunta2 := Pregunta
		conTitulo: 'Desarrollo de Pagina web con Javacript'
		conDescripcion: 'Como empezar'
		conTopicos: coleccionTopicos2
		yUsuario: usuario2.
	usuario2 agregarPregunta: pregunta2