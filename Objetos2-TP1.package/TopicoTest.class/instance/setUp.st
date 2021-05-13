running
setUp
	| usuario1 topicos1  |
	topicos1 := OrderedCollection new.
	usuario1 := Usuario
		conNombre: 'Agustina'
		conEmail: 'agus@cuora'
		yContraseña: '123'.
	topico := Topico
		conNombre: 'Smalltalk'
		yDescripcion: 'Lenguaje de programacion orientado a objetos'.
	topicos1 add: topico.
	pregunta1 := Pregunta
		conTitulo: 'Duda con smalltalk'
		conDescripcion: 'No entiendo como hacer los tests'
		conTopicos: topicos1
		yUsuario: usuario1.
	pregunta2 := Pregunta
		conTitulo: 'Problemas con Herencia'
		conDescripcion: 'No entiendo como se heredan los atributos'
		conTopicos: topicos1
		yUsuario: usuario1.
	topico agregarPregunta: pregunta1.
	topico agregarPregunta: pregunta2