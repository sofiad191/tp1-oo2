operations
eliminarPregunta
	"Es suficiente esto? Da error en los tests "

	usuario eliminarPregunta: self.
	respuestas do: [ :unaRespuesta | unaRespuesta eliminarRespuesta ].
	respuestas removeAll: respuestas.
	topicos do: [ :unTopico | [unTopico eliminarPregunta: self ]]