tests
testAgregarRespuesta
	| respuesta respuesta2 |
	self assert: pregunta1 respuestas size equals: 0.
	respuesta := Respuesta
		conPregunta: pregunta1
		unaDescripcion: 'Lee el libro'
		yUnUsuario: usuario1.
	usuario1 agregarRespuesta: respuesta.
	pregunta1 agregarRespuesta: respuesta.
	self assert: (pregunta1 respuestas includes: respuesta).
	self assert: pregunta1 respuestas size equals: 1.
	respuesta2 := Respuesta
		conPregunta: pregunta2
		unaDescripcion: '...'
		yUnUsuario: usuario1.
	usuario1 agregarRespuesta: respuesta2.
	pregunta1 agregarRespuesta: respuesta2.
	self assert: (pregunta1 respuestas includes: respuesta2).
	self assert: pregunta1 respuestas size equals: 2