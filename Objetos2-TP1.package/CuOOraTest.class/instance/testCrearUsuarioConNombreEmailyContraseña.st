tests
testCrearUsuarioConNombreEmailyContraseña
	| us3 |
	self assert: sistema usuarios size equals: 2.
	us3 := sistema crearUsuarioConNombre: 'Juan' email: 'Juan@gmail.com' yContraseña: 'pepe'.
	self assert: sistema usuarios size equals: 3.
	self assert: (sistema usuarios includes: us3).
