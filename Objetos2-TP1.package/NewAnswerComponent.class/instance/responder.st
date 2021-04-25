callbacks
responder
	| respuesta |
	textoRespuesta ifEmpty: [ ^ self ].
	respuesta := Respuesta
		conPregunta: pregunta
		unaDescripcion: textoRespuesta
		yUnUsuario: self session usuario.
	self session usuario agregarRespuesta: respuesta.
	self answer
