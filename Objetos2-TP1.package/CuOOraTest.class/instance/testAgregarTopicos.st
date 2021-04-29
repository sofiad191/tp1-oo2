tests
testAgregarTopicos
	| top3 top4 |
	self assert: sistema topicos size equals: 2.
	top3 := Topico
		conNombre: 'JavaScript'
		yDescripcion: 'Lenguaje de programacion'.
	top4 := Topico
		conNombre: 'JavaScript'
		yDescripcion: 'Lenguaje de programacion'.
	sistema agregarTopico: top3.
	sistema agregarTopico: top4.
	self assert: sistema topicos size equals: 3.
	self assert: (sistema topicos includes: top3).
	self deny: (sistema topicos includes: top4)