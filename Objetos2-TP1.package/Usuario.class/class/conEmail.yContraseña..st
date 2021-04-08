as yet unclassified
conEmail: unEmail yContraseña: unaContraseña
	^ self new
		email: unEmail;
		contraseña: unaContraseña;
		fechaHoraCreacion: DateAndTime now;
		yourself