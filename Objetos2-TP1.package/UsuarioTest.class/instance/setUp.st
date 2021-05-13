running
setUp
	| coleccion1 coleccion2 |
	coleccion1 := OrderedCollection new.
	coleccion2 := OrderedCollection new.
	topico1 := Topico conNombre: 'Python' yDescripcion: '..'.
	topico2 := Topico conNombre: 'C' yDescripcion: '..'.
	coleccion1 add: topico1.
	coleccion2 add: topico2.
	usuario1 := Usuario
		conNombre: 'Benito'
		conEmail: 'benito@gmail.com'
		yContraseña: 'benito123'.
	usuario2 := Usuario
		conNombre: 'Alicia'
		conEmail: 'alicia@gmail.com'
		yContraseña: 'alicia123'.
	pregunta1 := Pregunta
		conTitulo: 'Como programar en python?'
		conDescripcion: '..'
		conTopicos: coleccion1
		yUsuario: usuario1.
	usuario1 agregarPregunta: pregunta1.
	respuesta1 := Respuesta
		conPregunta: pregunta1
		unaDescripcion: '..'
		yUnUsuario: usuario2.
	usuario2 agregarRespuesta: respuesta1.
	pregunta2 := Pregunta
		conTitulo: 'Como programar en C?'
		conDescripcion: '..'
		conTopicos: coleccion2
		yUsuario: usuario2.
	usuario2 agregarPregunta: pregunta2.
	respuesta2 := Respuesta
		conPregunta: pregunta2
		unaDescripcion: '..'
		yUnUsuario: usuario1.
	usuario1 agregarRespuesta: respuesta2.
	usuario1 agregarTopicoDeInteres: topico1.
	usuario1 agregarTopicoDeInteres: topico2.
	usuario2 agregarTopicoDeInteres: topico1.
	usuario2 seguirUsuario: usuario1