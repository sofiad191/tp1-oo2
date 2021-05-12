operations
agregarDislikeConUsuario: unUsuario
	| voto |
	voto := Voto dislikeConUsuario: unUsuario yPublicacion: self.
	votos
		detect: [ :v | v creador = unUsuario ]
		ifFound: [ :v | self eliminarVoto: v ].
	voto darDislike.
	votos add: voto