utility
agregarPreguntaConTitulo: unTitulo ConDescripcion: unaDescripcion conTopicos: unosTopicos yUsuario: unUsuario
	| preguntaNueva coleccionTopicos |
	coleccionTopicos := ((unosTopicos substrings: ',')
		collect: [ :nombre | Topico conNombre: nombre yDescripcion: '' ])
		asOrderedCollection.
	preguntaNueva := Pregunta
		conTitulo: unTitulo
		conDescripcion: unaDescripcion
		conTopicos: coleccionTopicos
		yUsuario: unUsuario.
	coleccionTopicos
		do: [ :topico | self agregarTopico: topico conPregunta: preguntaNueva ].
	unUsuario agregarPregunta: preguntaNueva.
	^preguntaNueva