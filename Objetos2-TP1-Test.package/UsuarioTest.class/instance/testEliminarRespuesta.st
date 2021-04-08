tests
testEliminarRespuesta
	self assert: (us1 respuestas includes: res2).
	self assert: us1 respuestas size equals: 1.
	us1 eliminarRespuesta: res2.
	self deny: (us1 respuestas includes: res2).
	self assert: us1 respuestas size equals: 0.
	