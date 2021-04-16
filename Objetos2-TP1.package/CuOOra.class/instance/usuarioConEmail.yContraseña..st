utility
usuarioConEmail: unEmail yContraseña: unaContraseña
	^ usuarios
		detect: [ :each | each email = unEmail & (each contraseña = unaContraseña) ]
		ifNone: [ nil ]