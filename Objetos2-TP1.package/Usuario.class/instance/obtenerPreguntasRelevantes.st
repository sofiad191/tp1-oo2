operations
obtenerPreguntasRelevantes
	"Devuelve bien las preguntas de pregUsuarios pero no las de pregTopicos. Para mi el problema esta en la union."

	| pregUsuarios pregTopicos preg |
	pregUsuarios := OrderedCollection new.
	pregTopicos := OrderedCollection new.
	preg := OrderedCollection new.
	pregUsuarios addAll: ( usuariosSeguidos
		flatCollect: [ :unUsuario | unUsuario preguntas ]).
	pregTopicos addAll: (topicosDeInteres
		flatCollect: [ :unTopico | unTopico preguntas ]).
	preg := pregUsuarios union: pregTopicos.
	^ preg