callbacks
responder
	| respuesta |
	textoRespuesta ifEmpty: [ ^ self ].
	respuesta := Respuesta new.
	respuesta texto: textoRespuesta.
	self session usuario agregarRespuesta: respuesta.
	self answer