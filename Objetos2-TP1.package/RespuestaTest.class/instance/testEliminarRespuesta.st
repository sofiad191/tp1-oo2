tests
testEliminarRespuesta
	self assert: respuesta1 pregunta equals: pregunta1.
	self assert: respuesta1 usuario equals: usuario2.
	self assert: (usuario2 respuestas includes: respuesta1).
	respuesta1 eliminarRespuesta.
	self deny: (usuario2 respuestas includes: respuesta1)