running
setUp
	topico := Topico
		conNombre: 'Smalltalk'
		yDescripcion: 'Lenguaje de programacion orientado a objetos'.
	preg1 := Pregunta new.
	preg1 titulo: 'Duda con smalltalk'.
	preg1 descripcion: 'No entiendo como hacer los tests'.
	preg2 := Pregunta new.
	preg2 titulo: 'Problemas con Herencia'.
	preg2 descripcion: 'No entiendo como se heredan los atributos'.
	topico agregarPregunta: preg1.
	topico agregarPregunta: preg2