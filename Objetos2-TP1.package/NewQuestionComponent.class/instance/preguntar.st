callbacks
preguntar
	| pregunta top |
	tituloPregunta ifEmpty: [ ^ self ].
	descripcionPregunta ifEmpty: [ ^ self ].
	topicosPregunta ifEmpty: [ ^ self ].
	top := ((topicosPregunta substrings: ',')
		collect: [ :nombre | Topico conNombre: nombre yDescripcion: '' ])
		asOrderedCollection.
	pregunta := Pregunta
		conTitulo: tituloPregunta
		conDescripcion: descripcionPregunta
		conTopicos: top
		yUsuario: self session usuario.
	top
		do:
			[ :topico |  CuOOra soleInstance agregarTopico: topico conPregunta: pregunta ].
	self session usuario agregarPregunta: pregunta.
	self answer