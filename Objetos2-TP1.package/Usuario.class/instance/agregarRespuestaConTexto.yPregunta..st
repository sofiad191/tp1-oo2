operations
agregarRespuestaConTexto: unTexto yPregunta: unaPregunta
	"devuelve ^unaRepuesta ?"

	| unaRespuesta |
	unaRespuesta := Respuesta new.
	unaRespuesta texto: unTexto.
	unaRespuesta pregunta: unaPregunta.
	unaRespuesta usuario: self.
	self agregarRespuesta: unaRespuesta.
	^ unaRespuesta