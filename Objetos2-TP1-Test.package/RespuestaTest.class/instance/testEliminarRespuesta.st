tests
testEliminarRespuesta
self assert: res1 pregunta equals: preg1.
	self deny: res1 pregunta equals: preg2.
	self assert: res1 usuario equals: us3.
	self assert: (us3 respuestas includes: res1).
	res1 eliminarRespuesta.
	self deny: (us3 respuestas includes: res1)