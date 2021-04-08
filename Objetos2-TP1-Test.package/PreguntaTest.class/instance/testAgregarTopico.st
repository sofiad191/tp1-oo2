tests
testAgregarTopico
	"Top1 ya esta agregado."

	self assert: preg1 topicos size equals: 1.
	self assert: (preg1 topicos includes: top1). 
	preg1 agregarTopico: top2.
	self assert: preg1 topicos size equals: 2.
	self assert: (preg1 topicos includes: top2)