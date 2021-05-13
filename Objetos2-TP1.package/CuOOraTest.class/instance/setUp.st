running
setUp
	sistema := CuOOra new.
	usuario1 := Usuario new.
	usuario2 := Usuario new.
	usuario1 := sistema
		crearUsuarioConNombre: 'Sofia'
		email: 'sofia@gmail.com'
		yContraseña: 'sofia123'.
	usuario2 := sistema
		crearUsuarioConNombre: 'Juan'
		email: 'juan@gmail.com'
		yContraseña: 'juan123'.
	pregunta1 := sistema
		agregarPreguntaConTitulo: 'Como hacer los tests en smalltalk?'
		ConDescripcion: '..'
		conTopicos: 'Smalltalk,Test'
		yUsuario: usuario1.
	respuesta1 := sistema
		agregarRespuestaAPregunta: pregunta1
		ConDescripcion: 'sUnit'
		yUsuario: usuario2