rendering
registrarEIniciarSesion
	| theUser |
	theUser := Usuario conNombre: nombre  conEmail: email yContraseña: contraseña . 
	self model agregarUsuario: theUser.
	self proceedWith: theUser