utility
crearUsuarioConNombre: unNombre yContraseña: unaContraseña
"deberia devolver ^nuevoUsuario ?"
	| nuevoUsuario |
	nuevoUsuario := Usuario
		conEmail: unNombre
		yContraseña: unaContraseña.
	self agregarUsuario: nuevoUsuario.
	^nuevoUsuario 