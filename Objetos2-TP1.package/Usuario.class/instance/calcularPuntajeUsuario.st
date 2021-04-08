operations
calcularPuntajeUsuario
	"probar "

	^ preguntas size * 20 + (respuestas size * 50)
		+
			(self preguntas sumNumbers: [ :unaPregunta | unaPregunta calcularPuntaje ])
		+
			(self respuestas sumNumbers: [ :unaRespuesta | unaRespuesta calcularPuntaje ])
	"	-
			(self respuestas
				sumNumbers:
					[ :unaRespuesta | unaRespuesta usuario = unaRespuesta pregunta usuario ])"