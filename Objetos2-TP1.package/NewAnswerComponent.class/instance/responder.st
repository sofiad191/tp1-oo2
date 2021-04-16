callbacks
responder
	textoRespuesta ifEmpty: [ ^ self ].
	self session usuario
		agregarRespuestaConTexto: textoRespuesta
		yPregunta: pregunta..
	"respuesta texto: textoRespuesta.
	self session usuario agregarRespuesta: respuesta.
	pregunta agregarRespuesta: respuesta."
	self answer