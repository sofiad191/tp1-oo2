operations
obtenerPreguntasRelevantes
	| preg |
	preg := OrderedCollection new.
	self topicosDeInteres do: [ :unTopico | preg addAll: unTopico preguntas ].
	self usuariosSeguidos
		do: [ :unUsuario | preg addAll: unUsuario preguntas ].
	^ preg