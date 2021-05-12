operations
agregarLikeConUsuario: unUsuario
	| voto1|
	voto1 := Voto likeConUsuario: unUsuario yPublicacion: self.
	votos
		detect: [ :v | v creador = unUsuario ]
		ifFound: [ :v | self eliminarVoto: v ].
	voto1 darLike.
	votos add: voto1