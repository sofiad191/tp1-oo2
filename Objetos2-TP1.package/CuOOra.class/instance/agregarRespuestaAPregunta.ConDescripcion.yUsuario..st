utility
agregarRespuestaAPregunta: unaPregunta ConDescripcion: unaDescripcion yUsuario: unUsuario
	| respuestaNueva |
	respuestaNueva := Respuesta
		conPregunta: unaPregunta
		unaDescripcion: unaDescripcion
		yUnUsuario: unUsuario.
	unUsuario agregarRespuesta: respuestaNueva.
	unaPregunta agregarRespuesta: respuestaNueva
