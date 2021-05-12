callbacks
responder
	textoRespuesta ifEmpty: [ ^ self ].
	CuOOra soleInstance
		agregarRespuestaAPregunta: self pregunta
		ConDescripcion: textoRespuesta
		yUsuario: self session usuario.
	self answer
