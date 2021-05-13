tests
testUsuarioConEmailYContraseña
	self assert: sistema usuarios size equals: 2.
	self assert: usuario1 nombre equals: 'Sofia'.
	self assert: usuario1 email equals: 'sofia@gmail.com'.
	self assert: usuario1 contraseña equals: 'sofia123'.
	self assert: (sistema usuarios includes: usuario1)