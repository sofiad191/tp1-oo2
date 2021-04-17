running
setUp
	| us1 |
	us1 := Usuario
		conNombre: 'Agustina'
		conEmail: 'agus@cuora'
		yContraseña: '123'.
	topico := Topico
		conNombre: 'Smalltalk'
		yDescripcion: 'Lenguaje de programacion orientado a objetos'.
	preg1 := Pregunta
		conTitulo: 'Duda con smalltalk'
		conDescripcion: 'No entiendo como hacer los tests'
		conTopicos: topico nombre 
		yUsuario: us1.
	preg2 := Pregunta conTitulo: 'Problemas con Herencia' conDescripcion: 'No entiendo como se heredan los atributos' conTopicos: topico nombre  yUsuario: us1.
	topico agregarPregunta: preg1.
	topico agregarPregunta: preg2