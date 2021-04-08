tests
testAgregarPregunta
	| preg3 preg4 |
	self assert: (topico preguntas includes: preg1).
	self assert: (topico preguntas includes: preg2).
	
	preg3 := Pregunta new.
	preg3 titulo: 'Problema con los tests'.
	preg3 descripcion: 'No me anda el test de agregarPregunta'.
	preg4 := Pregunta new.
	preg4 titulo: 'Duda con implementacion de WALoginComponent'.
	preg4 descripcion: 'Los usuarios no pueden hacer login'.
	
self deny: (topico preguntas includes: preg3).
	
self deny: (topico preguntas includes: preg4).