utility
agregarTopicoConNombre: unNombre yDescripcion: unaDescripcion
	| nuevoTopico |
	nuevoTopico := Topico
		conNombre: unNombre
		yDescripcion: unaDescripcion.
	^ self agregarTopico: nuevoTopico.