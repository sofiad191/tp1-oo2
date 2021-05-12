operations
agregarVoto: unVoto
	votos
		detect: [ :v | v creador = unVoto creador ]
		ifFound: [ :v | self eliminarVoto: v ].
	votos add: unVoto