rendering
registrarEIniciarSesion
	| unUsuario |
	unUsuario := Usuario new.
	unUsuario := (self model
		crearUsuarioConNombre: nombre
		email: email
		yContraseña: contraseña) ifNotNil: [ :it | self proceedWith: it ].
	self email: nil.
	self contraseña: nil