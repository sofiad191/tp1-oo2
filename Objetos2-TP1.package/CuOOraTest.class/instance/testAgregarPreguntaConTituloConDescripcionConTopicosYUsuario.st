tests
testAgregarPreguntaConTituloConDescripcionConTopicosYUsuario
	| pregunta2 |
	pregunta2 := Pregunta new.
	self assert: usuario1 preguntas size equals: 1.
	pregunta2 := sistema agregarPreguntaConTitulo: 'Como hacer paginas web con Smalltalk?' ConDescripcion: '..' conTopicos: ('Smalltalk,paginas web') yUsuario: usuario1.
	self assert: usuario1 preguntas size equals: 2.
	self assert: pregunta2 topicos size equals: 2.	
	