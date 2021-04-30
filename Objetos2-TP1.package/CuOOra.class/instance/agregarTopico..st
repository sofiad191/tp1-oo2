utility
agregarTopico: unTopico
	topicos
		detect: [ :t | t nombre = unTopico nombre ]
		ifFound: [ ^nil ]
		ifNone: [ topicos add: unTopico.
			^ unTopico ]