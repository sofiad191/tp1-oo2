operations
calcularPuntajeUsuario
	"probar "

	^ preguntas size * 20 + (respuestas size * 50)
		+
			(preguntas sumNumbers: [ :unaPregunta | unaPregunta calcularPuntaje ])
		+
			(respuestas
				sumNumbers: [ :unaRespuesta | unaRespuesta calcularPuntaje ])