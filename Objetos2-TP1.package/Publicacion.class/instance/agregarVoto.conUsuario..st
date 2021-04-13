operations
agregarVoto: unVoto conUsuario: unUsuario
	votos
		detect: [ :voto | voto creador = unUsuario ]
		ifFound: [ :voto | self eliminarVoto: voto ].
	self agregarVoto: unVoto 