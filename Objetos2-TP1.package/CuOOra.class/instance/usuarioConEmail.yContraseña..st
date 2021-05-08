utility
usuarioConEmail: unEmail yContraseña: unaContraseña
	^usuarios
		detect:
			[ :usuario | usuario email = unEmail and: usuario contraseña = unaContraseña ]
		ifNone: [ ^ nil ].
