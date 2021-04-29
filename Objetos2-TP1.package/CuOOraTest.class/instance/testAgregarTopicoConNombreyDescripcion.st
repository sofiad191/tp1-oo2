tests
testAgregarTopicoConNombreyDescripcion
	| top3 top4 |
	self assert: (sistema topicos includes: top1).
	self assert: (sistema topicos includes: top2).
	top3 := sistema agregarTopicoConNombre: 'JavaScript' yDescripcion: '..'.
	top4 := sistema agregarTopicoConNombre: 'Estructura de datos' yDescripcion: '..'.
	self assert: (sistema topicos includes: top3).
	self assert: (sistema topicos includes: top4)