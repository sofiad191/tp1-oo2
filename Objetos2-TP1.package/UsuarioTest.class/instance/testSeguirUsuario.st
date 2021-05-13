tests
testSeguirUsuario
self assert: usuario1 usuariosSeguidos size equals: 0.
	usuario1 seguirUsuario: usuario2.
	self assert: (usuario1 usuariosSeguidos includes: usuario2).
	self assert: usuario1 usuariosSeguidos size equals: 1.