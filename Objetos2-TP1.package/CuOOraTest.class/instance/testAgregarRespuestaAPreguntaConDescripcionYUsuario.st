tests
testAgregarRespuestaAPreguntaConDescripcionYUsuario
	| respuesta2 |
	respuesta2 := Respuesta new.
	self assert: pregunta1 respuestas size equals: 1.
	respuesta2 := sistema agregarRespuestaAPregunta: pregunta1 ConDescripcion: '...' yUsuario: usuario2.
	self assert: pregunta1 respuestas size equals: 2.
	self assert: (pregunta1 respuestas includes: respuesta2).
	self assert: respuesta2 usuario equals: usuario2.