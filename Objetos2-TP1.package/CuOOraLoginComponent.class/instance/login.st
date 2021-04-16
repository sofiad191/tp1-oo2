private protocol
login
	(self model usuarioConEmail: email yContraseña: contraseña  )
		ifNotNil: [ :it | self proceedWith: it ].
	email := nil.
	contraseña  := nil