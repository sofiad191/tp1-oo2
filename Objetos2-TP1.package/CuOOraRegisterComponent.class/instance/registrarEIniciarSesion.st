rendering
registrarEIniciarSesion
	| unUsuario |
	unUsuario := Usuario
		conNombre: nombre
		conEmail: email
		yContraseña: contraseña.
	(self model agregarUsuario: unUsuario) ifNotNil: [ 
	self proceedWith: unUsuario].
	self email: nil.
	self contraseña: nil.