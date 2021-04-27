operations
agregarDislikeConUsuario: unUsuario
	| voto |
	voto := Voto new.
	voto creador: unUsuario.
	voto publicacion: self.
	voto := votos
		detect: [ :v | v creador = unUsuario ]
		ifFound: [ self eliminarVoto: voto ].
	voto darDislike.
	votos add: voto