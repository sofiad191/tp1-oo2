tests
testAgregarUsuario
	| us3 us4 |
	self assert: (sistema usuarios includes: us1).
	self assert: (sistema usuarios includes: us2).
	us3 := Usuario
		conNombre: 'Sofia'
		conEmail: 'sofia@gmail.com'
		yContraseña: 'sofia123'.
	us4 := Usuario conEmail: 'benito@gmail.com' yContraseña: 'benito123'.
	self deny: (sistema usuarios includes: us3).
	self deny: (sistema usuarios includes: us4)