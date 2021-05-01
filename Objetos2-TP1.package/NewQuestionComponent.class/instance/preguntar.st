callbacks
preguntar
	| pregunta topicos |
	topicos := OrderedCollection new.
	topicos := ((topicosPregunta substrings: ',')
		collect:
			[ :nombre | CuOOra soleInstance agregarTopicoConNombre: nombre yDescripcion: '' ])
		asOrderedCollection.
	pregunta := Pregunta
		conTitulo: tituloPregunta
		conDescripcion: descripcionPregunta
		conTopicos: topicos
		yUsuario: self session usuario.
	self session usuario agregarPregunta: pregunta.
	topicos do: [ :top | top agregarPregunta: pregunta ].
	CuOOra soleInstance topicos
		do: [ :topicoCuOOra | 
			[ pregunta topicos
				do: [ :topicoPregunta | 
					[ topicoCuOOra nombre = topicoPregunta nombre
						ifTrue: [ topicoCuOOra agregarPregunta: pregunta ] ] ] ] ].
	self answer