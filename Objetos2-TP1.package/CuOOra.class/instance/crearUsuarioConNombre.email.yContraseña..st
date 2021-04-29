utility
crearUsuarioConNombre: unNombre email: unEmail yContraseña: unaContraseña
	| nuevoUsuario |
	nuevoUsuario := Usuario
		conNombre: unNombre
		conEmail: unEmail
		yContraseña: unaContraseña.
	^ self agregarUsuario: nuevoUsuario.