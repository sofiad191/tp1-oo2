operations
seguirUsuario: usuarioASeguir
	usuarioASeguir == self
	ifFalse: [ usuariosSeguidos add: usuarioASeguir ]