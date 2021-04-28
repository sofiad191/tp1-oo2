utility
agregarUsuario: unUsuario
	^ usuarios
		detect: [ :usuario | usuario nombre = unUsuario nombre ]
		ifFound: [ nil ]
		ifNone: [ usuarios add: unUsuario ]