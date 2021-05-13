utility
crearUsuarioConNombre: unNombre email: unEmail yContraseña: unaContraseña
	| nuevoUsuario |
	nuevoUsuario := Usuario
		conNombre: unNombre
		conEmail: unEmail
		yContraseña: unaContraseña.
	(self usuarioConEmail: unEmail yContraseña: unaContraseña)
		ifNil: [ usuarios add: nuevoUsuario. ^ nuevoUsuario ].
	^ nil