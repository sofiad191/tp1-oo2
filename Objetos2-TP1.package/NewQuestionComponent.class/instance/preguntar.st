callbacks
preguntar
	tituloPregunta ifEmpty: [ ^ self ].
	descripcionPregunta ifEmpty: [ ^ self ].
	topicosPregunta ifEmpty: [ ^ self ].
	CuOOra soleInstance
		agregarPreguntaConTitulo: tituloPregunta
		ConDescripcion: descripcionPregunta
		conTopicos: topicosPregunta
		yUsuario: self session usuario.
	self answer
