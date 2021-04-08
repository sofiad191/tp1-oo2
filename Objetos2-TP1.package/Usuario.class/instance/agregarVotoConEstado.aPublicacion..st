operations
agregarVotoConEstado: unEstado aPublicacion: unaPublicacion
	| voto |
	voto := Voto new.
	voto publicacion: unaPublicacion.
	voto creador: self.
	unEstado
		ifTrue: [ voto darLike ]
		ifFalse: [ voto darDislike ].
	voto publicacion agregarVoto: voto conUsuario: self.