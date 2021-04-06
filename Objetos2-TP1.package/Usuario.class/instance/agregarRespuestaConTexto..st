operations
agregarRespuestaConTexto: unTexto
"devuelve ^unaRepuesta ?"
	| unaRespuesta |
	unaRespuesta := Respuesta new.
	unaRespuesta texto: unTexto.
	respuestas add: unaRespuesta
	
	