running
setUp
	us1 := Usuario conNombre: 'Sofia' conEmail: 'sofia@gmail.com' yContraseña: 'hola123'.
	us2 := Usuario conNombre: 'Benito' conEmail: 'benito@gmail.com' yContraseña: 'chau1234'.
	publi1 := Pregunta new.
	publi1 titulo: 'Trabajo Practico 1'.
	publi1 texto: 'Para que me sirven los tests?'.
	publi1 agregarTopico: 'Orientacion a objetos 2'.
	publi1 usuario: us1.
	publi2 := Respuesta new.
	publi2
		texto: 'Se realizan los tests para verificar que funcione el codigo'.
	publi2 usuario: us2