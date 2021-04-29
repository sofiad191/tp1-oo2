running
setUp
	us1 := Usuario
		conNombre: 'Sofia'
		conEmail: 'sofia@gmail.com'
		yContraseña: 'hola123'.
	us2 := Usuario
		conNombre: 'Benito'
		conEmail: 'benito@gmail.com'
		yContraseña: 'chau1234'.
	publi1 := Pregunta conTitulo: 'Trabajo Practico 1' conDescripcion: 'Para que me sirven los tests?'  conTopicos: 'oo2' yUsuario: us1.
	publi2 := Respuesta conPregunta: publi1 unaDescripcion: 'Se realizan los tests para verificar que funcione el codigo' yUnUsuario: us2. 
