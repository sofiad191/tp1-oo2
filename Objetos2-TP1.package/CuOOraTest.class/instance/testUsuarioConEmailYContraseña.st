tests
testUsuarioConEmailYContraseña
	self assert: sistema usuarios size equals: 2.
	self assert: us1 nombre equals: 'Juan'.
	self assert: us1 email equals: 'juan@gmail.com'.
	self assert: us1 contraseña equals: 'hola123'.
	self assert: (sistema usuarios includes: us1)