as yet unclassified
conNombre: unNombre conEmail: unEmail yContraseña: unaContraseña
	^ self new
		nombre: unNombre;
		email: unEmail;
		contraseña: unaContraseña;
		fechaHoraCreacion: DateAndTime now;
		yourself