operations
agregarLikeConUsuario: unUsuario
	| voto |
	voto := Voto new.
	voto creador: unUsuario.
	voto publicacion: self.
	votos
		detect: [ :v | v creador = unUsuario ]
		ifFound: [ :v | self eliminarVoto: v ].
	voto darLike.
			votos add: voto 