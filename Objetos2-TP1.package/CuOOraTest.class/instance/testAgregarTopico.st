tests
testAgregarTopico
	| top3 top4 |
	self assert: (sistema topicos includes: top1).
	self assert: (sistema topicos includes: top2).
	
	top3 := Topico conNombre: 'JavaScript' yDescripcion: 'Lenguaje de programacion'.
	top4 := Topico conNombre: 'Estructura de datos' yDescripcion: 'Organizacion de datos'.
	
	self deny: (sistema topicos includes: top3).
	self deny: (sistema topicos includes: top4).
	
	
	