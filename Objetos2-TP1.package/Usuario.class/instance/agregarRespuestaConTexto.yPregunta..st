operations
agregarRespuestaConTexto: unTexto yPregunta: unaPregunta
	"devuelve ^unaRepuesta ?"

	| unaRespuesta |
	unaRespuesta := Respuesta new.
	unaRespuesta texto: unTexto.
	unaRespuesta pregunta: unaPregunta.
	unaRespuesta usuario: self.
	unaPregunta agregarRespuesta: unaRespuesta.
	self agregarRespuesta: unaRespuesta.
	^ unaRespuesta