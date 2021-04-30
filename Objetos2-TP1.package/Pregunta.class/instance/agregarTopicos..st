operations
agregarTopicos: unosTopicos
	topicos addAll: unosTopicos.
	CuOOra soleInstance topicos
		do: [ :topicoCuoora | 
			[ self topicos
				do: [ :topicoPregunta | 
					[ topicoCuoora nombre = topicoPregunta nombre
						ifTrue: [ topicoCuoora agregarPregunta: self ] ] ] ] ]