operations
eliminarPregunta

	usuario eliminarPregunta: self.
	respuestas do: [ :unaRespuesta | unaRespuesta eliminarRespuesta ].
	topicos do: [ :unTopico | [ unTopico eliminarPregunta: self ] ]