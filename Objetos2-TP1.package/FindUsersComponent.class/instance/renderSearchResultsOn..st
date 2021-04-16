rendering
renderSearchResultsOn: aCanvas
	| usuario |
	textoBusqueda ifEmpty: [ ^ self ].
	usuario := CuOOra soleInstance
		usuariosConParteDelString: textoBusqueda.
	usuario
		ifEmpty: [ aCanvas
				paragraph: 'No hay usuarios' ]
		ifNotEmpty: [ self renderUsers: usuario on: aCanvas ]