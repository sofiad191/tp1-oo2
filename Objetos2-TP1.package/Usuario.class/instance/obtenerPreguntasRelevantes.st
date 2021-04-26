operations
obtenerPreguntasRelevantes
	| preguntasUsuarios preguntasTopicos |
	preguntasUsuarios := OrderedCollection new.
	preguntasTopicos := OrderedCollection new.
	preguntasUsuarios := usuariosSeguidos
		flatCollect: [ :unUsuario | unUsuario preguntas ].
	preguntasTopicos := topicosDeInteres
		flatCollect: [ :unTopico | unTopico preguntas ].
	^ preguntasUsuarios union: preguntasTopicos