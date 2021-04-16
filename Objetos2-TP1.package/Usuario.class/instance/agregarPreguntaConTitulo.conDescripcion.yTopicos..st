operations
agregarPreguntaConTitulo: unTitulo conDescripcion: unaDescripcion yTopicos: unosTopicos
	| unaPregunta |
	unaPregunta := Pregunta new.
	unaPregunta titulo: unTitulo.
	unaPregunta descripcion: unaDescripcion.
	unaPregunta
		topicos:
			(((unosTopicos asString substrings: ',')asOrderedCollection)
				collect:
					[ :nom | [ CuOOra soleInstance agregarTopicoConNombre: nom yDescripcion: '' ] ]).
	unaPregunta usuario: self.
	self agregarPregunta: unaPregunta.
	^ unaPregunta