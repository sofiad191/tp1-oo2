tests
testAgregarUsuario
	self assert: sistema usuarios size equals: 2.
	self assert: (sistema usuarios includes: usuario1).
	self assert: (sistema usuarios includes: usuario2)