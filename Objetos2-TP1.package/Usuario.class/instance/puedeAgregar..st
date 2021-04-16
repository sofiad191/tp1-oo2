initialization
puedeAgregar: unUsuario
	unUsuario == self
	ifTrue: [ ^false ].
	(usuariosSeguidos includes: unUsuario)
	ifTrue: [ ^false ].
	^true