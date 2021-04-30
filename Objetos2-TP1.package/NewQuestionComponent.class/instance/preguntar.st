callbacks
preguntar
	| pregunta |
	tituloPregunta ifEmpty: [ ^ self ].
	descripcionPregunta ifEmpty: [ ^ self ].
	topicosPregunta ifEmpty: [ ^ self ].
	pregunta := Pregunta
		conTitulo: tituloPregunta
		conDescripcion: descripcionPregunta
		conTopicos: topicosPregunta
		yUsuario: self session usuario.
	self session usuario agregarPregunta: pregunta.
	self answer