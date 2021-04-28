accessing
topicos: unosTopicos 
topicos := ((unosTopicos substrings: ',') collect: [:nombre | Topico conNombre: nombre yDescripcion: '' ]) asOrderedCollection 