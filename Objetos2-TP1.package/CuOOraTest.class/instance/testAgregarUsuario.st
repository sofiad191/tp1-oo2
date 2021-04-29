tests
testAgregarUsuario
	| us3 us4 |
	us3 := Usuario
		conNombre: 'Sofia'
		conEmail: 'sofia@gmail.com'
		yContraseña: 'sofia123'.
	us4 := Usuario
		conNombre: 'Sofia'
		conEmail: 'sofia@gmail.com'
		yContraseña: 'sofia123'.
	sistema agregarUsuario: us3.
	sistema agregarUsuario: us4.
	self assert: sistema usuarios size equals: 3.
	self assert: (sistema usuarios includes: us3).
	self deny: (sistema usuarios includes: us4)