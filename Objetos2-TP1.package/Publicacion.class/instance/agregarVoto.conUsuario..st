operations
agregarVoto: unVoto conUsuario: unUsuario
	votos
		detect: [ :voto | voto creador = unUsuario ]
		ifFound: [ :voto | voto estado = unVoto estado ]
		ifNone: [ self agregarVoto: unVoto ]