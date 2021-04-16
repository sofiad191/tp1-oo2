callbacks
preguntar
	tituloPregunta ifEmpty: [ ^ self ].
	descripcionPregunta ifEmpty: [ ^ self ].
	topicosPregunta ifEmpty: [ ^ self ].
	self session usuario
		agregarPreguntaConTitulo: tituloPregunta
		conDescripcion: descripcionPregunta
		yTopicos: topicosPregunta.
	self answer