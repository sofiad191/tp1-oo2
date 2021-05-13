operations
calcularPuntajeUsuario
	^ preguntas size * 20 + (respuestas size * 50)
		+
			(self preguntas
				sumNumbers: [ :unaPregunta | unaPregunta calcularPuntaje ])
		+
			(self respuestas
				sumNumbers: [ :unaRespuesta | 
					unaRespuesta usuario = unaRespuesta pregunta usuario
					ifTrue: 0 ifFalse: [ unaRespuesta calcularPuntaje ] 
						  ])