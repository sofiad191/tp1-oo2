tests
testAgregarTopicoConPregunta
	| pregunta2 |
	pregunta2 := Pregunta new.
	self assert: sistema topicos size equals: 2.
	pregunta2 := sistema
		agregarPreguntaConTitulo: 'Como creo un componente Seaside?'
		ConDescripcion: '...'
		conTopicos: 'Smalltalk, Seaside'
		yUsuario: usuario2.
	self assert: sistema topicos size equals: 3.