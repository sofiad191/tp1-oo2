utility
usuariosConParteDelString: unString
	^ usuarios
		select:
			[ :each | each nombre asLowercase includesSubstring: unString asLowercase ]