rendering
renderSearchResultsOn: aCanvas
	| topico |
	textoBusqueda ifEmpty: [ ^ self ].
	topico := CuOOra soleInstance topicosConParteDelString: textoBusqueda.
	topico
		ifEmpty: [ aCanvas paragraph: 'No hay topicos' ]
		ifNotEmpty: [ self renderTopics: topico on: aCanvas ]