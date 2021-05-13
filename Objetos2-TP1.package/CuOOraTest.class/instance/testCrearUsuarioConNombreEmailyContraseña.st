tests
testCrearUsuarioConNombreEmailyContraseña
	| usuario3 |
	self assert: sistema usuarios size equals: 2.
	usuario3 := sistema crearUsuarioConNombre: 'Pepe' email: 'pepe@gmail.com' yContraseña: 'pepe123'.
	self assert: sistema usuarios size equals: 3.
	self assert: (sistema usuarios includes: usuario3).
