utility
crearUsuarioConNombre: unNombre email: unEmail yContraseña: unaContraseña
	"deberia devolver ^nuevoUsuario ?"

	| nuevoUsuario |
	(self usuarioConEmail: unEmail yContraseña: unaContraseña)
		ifNil: [ ^ nil ].
	nuevoUsuario := Usuario
		conNombre: unNombre
		conEmail: unEmail
		yContraseña: unaContraseña.
	self agregarUsuario: nuevoUsuario.
	^ nuevoUsuario