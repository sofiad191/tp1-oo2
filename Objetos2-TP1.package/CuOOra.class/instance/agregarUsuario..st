utility
agregarUsuario: unUsuario
	usuarios detect:
			[ :usuario | usuario nombre = unUsuario nombre & (usuario email = unUsuario email) ]
		ifFound: [ ^ nil ]
		ifNone: [ usuarios add: unUsuario.
			^ unUsuario ]