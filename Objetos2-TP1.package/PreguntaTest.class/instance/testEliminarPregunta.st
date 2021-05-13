tests
testEliminarPregunta
	| respuesta |
	self assert: pregunta1 respuestas size equals: 0.
	respuesta := Respuesta
		conPregunta: pregunta1
		unaDescripcion: 'Lee el libro'
		yUnUsuario: usuario2.
	usuario2 agregarRespuesta: respuesta.
	pregunta1 agregarRespuesta: respuesta.
	self assert: pregunta1 respuestas size equals: 1.
	self assert: (pregunta1 respuestas includes: respuesta).
	self assert: pregunta1 usuario equals: usuario1.
	self assert: (usuario1 preguntas includes: pregunta1).
	pregunta1 eliminarPregunta.
	self deny: (usuario1 preguntas includes: pregunta1).
	self deny: (usuario2 respuestas includes: respuesta)