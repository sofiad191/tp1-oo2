utility
agregarTopico: unTopico conPregunta: unaPregunta
	self topicos
		detect: [ :t | t nombre = unTopico nombre ]
		ifFound: [ :t | t agregarPregunta: unaPregunta ]
		ifNone: [ unTopico agregarPregunta: unaPregunta.
			topicos add: unTopico ]