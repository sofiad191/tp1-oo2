accessing
topicos: unosTopicos
	| top |
	top := OrderedCollection new.
	top := ((unosTopicos substrings: ',')
		collect: [ :nombre | CuOOra soleInstance agregarTopicoConNombre: nombre yDescripcion: '' ])
		asOrderedCollection.
	self agregarTopicos: top