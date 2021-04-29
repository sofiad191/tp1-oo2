accessing
topicos: unosTopicos
	| top |
	top := OrderedCollection new.
	top := ((unosTopicos substrings: ',')
		collect: [ :nombre | Topico conNombre: nombre yDescripcion: '' ])
		asOrderedCollection.
	self agregarTopicos: top.
	topicos do: [ :t | [ CuOOra soleInstance agregarTopico: t.  t agregarPregunta: self ] ]