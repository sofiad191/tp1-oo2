utility
crearUsuarioConNombre: unNombre yContraseña: unaContraseña

	| nuevoUsuario |
	nuevoUsuario := Usuario conEmail: unNombre yContraseña: unaContraseña.
	self agregarUsuario: nuevoUsuario.
	^ nuevoUsuario