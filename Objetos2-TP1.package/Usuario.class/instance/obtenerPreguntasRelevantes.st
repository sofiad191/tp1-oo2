operations
obtenerPreguntasRelevantes
	| preguntasUsuarios preguntasTopicos preg1 preg2 |
	preguntasUsuarios := OrderedCollection new.
	preguntasTopicos := OrderedCollection new.
	preg1 := OrderedCollection new.
	preg2 := OrderedCollection new.
	preguntasUsuarios := usuariosSeguidos
		flatCollect: [ :unUsuario | unUsuario preguntas ].
	preguntasTopicos := topicosDeInteres
		flatCollect: [ :unTopico | unTopico preguntas ].
	preg1 addAll: preguntasUsuarios.
	preg2 addAll: preguntasTopicos.
	^ preg2 union: preg1