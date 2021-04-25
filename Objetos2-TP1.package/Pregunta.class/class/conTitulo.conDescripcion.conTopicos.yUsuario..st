as yet unclassified
conTitulo: unTitulo conDescripcion: unaDescripcion conTopicos: unTopico yUsuario: unUsuario
	^ self new
		titulo: unTitulo;
		texto: unaDescripcion;
		topicos:
			((unTopico substrings: ',') asOrderedCollection
				collect:
					[ :nom | CuOOra soleInstance agregarTopicoConNombre: nom yDescripcion: '' ]);
		usuario: unUsuario;
			yourself