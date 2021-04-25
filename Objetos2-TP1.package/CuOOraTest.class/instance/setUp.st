running
setUp
	sistema := CuOOra new.
	us1 := Usuario conNombre: 'Juan' conEmail: 'juan@gmail.com' yContraseña: 'hola123'.
	us2 := Usuario
		conNombre: 'Pablo'
		conEmail: 'pablo@gmail.com'
		yContraseña: 'chau123'.
	top1 := Topico
		conNombre: 'Java'
		yDescripcion: 'Lenguaje de programacion'.
	top2 := Topico
		conNombre: 'Variables'
		yDescripcion: 'Elemento de lenguaje'.
	sistema agregarUsuario: us1.
	sistema agregarUsuario: us2.
	sistema agregarTopico: top1.
	sistema agregarTopico: top2