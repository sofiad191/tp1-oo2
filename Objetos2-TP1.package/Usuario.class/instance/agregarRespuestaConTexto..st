operations
agregarRespuestaConTexto: unTexto
	"devuelve ^unaRepuesta ?"

	| unaRespuesta |
	unaRespuesta := Respuesta new.
	unaRespuesta texto: unTexto.
	self agregarRespuesta: unaRespuesta.
	^unaRespuesta