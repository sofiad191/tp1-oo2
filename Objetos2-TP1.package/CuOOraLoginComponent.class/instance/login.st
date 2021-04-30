private protocol
login
	| us |
	us := Usuario new.
	us := (self model usuarioConEmail: email yContraseña: contraseña)
		ifNotNil: [ self proceedWith: us ].
	email := nil.
	contraseña := nil