rendering
registrarEIniciarSesion
	| unUsuario |
	unUsuario := Usuario
		conNombre: nombre
		conEmail: email
		yContraseña: contraseña.
	self model agregarUsuario: unUsuario.
	self proceedWith: unUsuario