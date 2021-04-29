operations
cantidadDislikes
	^ votos count: [ :unVoto | (unVoto estado) not  ]