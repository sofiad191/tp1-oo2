operations
agregarVoto: unVoto conUsuario: unUsuario
	| voto |
	voto := Voto new.
	voto := votos
		detect: [ :v | v creador = unUsuario ]
		ifFound: [ self eliminarVoto: voto ].
	self agregarVoto: unVoto