as yet unclassified
conTitulo: unTitulo descripcion: unaDescripcion topicos: unTopico yUsuario: unUsuario
	^ self new
		titulo: unTitulo;
		texto: unaDescripcion;
		topicos:
			((unTopico asString substrings: ',')
				collect: [ :nombre | [ Topico conNombre: nombre yDescripcion: '' ] ]);
		usuario: unUsuario;
		yourself