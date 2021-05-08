utility
agregarUsuario: unUsuario
	
	(self usuarioConEmail: unUsuario email yContraseña: unUsuario contraseña ) 
	ifNil: [usuarios add: unUsuario. ^ unUsuario].
	