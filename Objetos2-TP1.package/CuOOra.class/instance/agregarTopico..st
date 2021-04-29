utility
agregarTopico: unTopico
	"topicos add: unTopico"
	topicos detect: [ :t | t nombre = unTopico nombre ]
	ifNone: [ topicos add: unTopico ]