rendering
registrarEIniciarSesion
	| unUsuario |
	unUsuario := Usuario new.
	unUsuario := (self model
		crearUsuarioConNombre: nombre
		email: email
		yContraseña: contraseña) ifNotNil: [ self proceedWith: unUsuario ].
	self nombre: nil. self email: nil.
	self contraseña: nil