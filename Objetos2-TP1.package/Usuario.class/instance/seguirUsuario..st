operations
seguirUsuario: usuarioASeguir
	(usuariosSeguidos includes: usuarioASeguir ) ifTrue: [^self] .
	usuariosSeguidos add: usuarioASeguir 