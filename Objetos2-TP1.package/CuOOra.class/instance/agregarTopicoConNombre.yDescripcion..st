utility
agregarTopicoConNombre: unNombre yDescripcion: unaDescripcion
	"Deberia devolver ^nuevoTopico ? "
	| nuevoTopico |
	nuevoTopico := Topico
		conNombre: unNombre
		yDescripcion: unaDescripcion.
	topicos add: nuevoTopico.
	 
	