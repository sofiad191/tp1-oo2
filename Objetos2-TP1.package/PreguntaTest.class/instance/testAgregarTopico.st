tests
testAgregarTopico
	| preg4 |
	preg4 := Pregunta
		conTitulo: 'Hola'
		conDescripcion: 'Chau'
		conTopicos: ('Java,oo')
		yUsuario: us1.
	us1 agregarPregunta: preg4.
	self assert: preg4 usuario equals: us1.
	self assert: preg4 topicos size equals: 2.
