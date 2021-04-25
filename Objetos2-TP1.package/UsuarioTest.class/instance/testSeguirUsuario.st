tests
testSeguirUsuario
	us1 seguirUsuario: us2.
	self assert: (us1 usuariosSeguidos includes: us2).
	self deny: (us1 usuariosSeguidos includes: us3).
	