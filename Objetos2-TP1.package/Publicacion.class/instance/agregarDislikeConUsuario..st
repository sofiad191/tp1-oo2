operations
agregarDislikeConUsuario: unUsuario
	| voto |
	voto := Voto new.
	voto creador: unUsuario.
	voto publicacion: self.
	votos
		detect: [ :v | v creador = unUsuario ]
		ifFound: [ :v | self eliminarVoto: v ].voto darDislike.
	votos add: voto