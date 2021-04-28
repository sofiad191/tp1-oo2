operations
seguirUsuario: usuarioASeguir
	(self siSoyYoOLoSigo: usuarioASeguir)
		ifFalse: [ usuariosSeguidos add: usuarioASeguir ]