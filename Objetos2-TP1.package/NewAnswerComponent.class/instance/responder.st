callbacks
responder
	textoRespuesta ifEmpty: [ ^ self ].
	self session usuario
		agregarRespuestaConTexto: textoRespuesta
		yPregunta: pregunta.
	self answer
	"respuesta texto: textoRespuesta.
	self session usuario agregarRespuesta: respuesta.
	pregunta agregarRespuesta: respuesta."