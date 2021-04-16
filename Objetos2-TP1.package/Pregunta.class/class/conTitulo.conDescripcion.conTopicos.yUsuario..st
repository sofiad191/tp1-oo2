as yet unclassified
conTitulo: unTitulo conDescripcion: unaDescripcion conTopicos: unTopico yUsuario: unUsuario
	^ self new
		titulo: unTitulo;
		texto: unaDescripcion;
		topicos:
			((unTopico asString substrings: ',')
				collect: [ :nombre | [ Topico conNombre: nombre yDescripcion: '' ] ]);
		usuario: unUsuario;
		yourself