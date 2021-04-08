operations
eliminarPregunta
	"Es suficiente esto? "

	topicos do: [ :unTopico | unTopico eliminarPregunta: self ].
	usuario do: [ :unUsuario | unUsuario eliminarPregunta: self ].
	respuestas do: [ :unaRespuesta | unaRespuesta eliminarRespuesta ].
