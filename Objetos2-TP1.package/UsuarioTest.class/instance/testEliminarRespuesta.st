tests
testEliminarRespuesta
	self assert: (usuario1 respuestas includes: respuesta2).
	self assert: usuario1 respuestas size equals: 1.
	usuario1 eliminarRespuesta: respuesta2.
	self deny: (usuario1 respuestas includes: respuesta2).
	self assert: usuario1 respuestas size equals: 0