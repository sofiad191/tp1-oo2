operations
agregarLikeConUsuario: unUsuario
	| voto |
	voto := Voto new.
	voto creador: unUsuario.
	voto publicacion: self.
	voto := votos
		detect: [ :v | v creador = unUsuario ]
		ifNone: [ voto darLike.
	votos add: voto ].