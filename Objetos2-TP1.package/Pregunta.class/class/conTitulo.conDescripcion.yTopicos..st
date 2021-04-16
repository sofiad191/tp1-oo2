as yet unclassified
conTitulo: unTitulo conDescripcion: unaDescripcion yTopicos: unTopico
	^ self new
		titulo: unTitulo;
		texto: unaDescripcion;
		topicos:
			((unTopico asString substrings: ',')
				collect: [ :nombre | [ Topico conNombre: nombre yDescripcion: '' ] ]);
				yourself