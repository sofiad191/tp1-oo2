rendering
renderSignUpButtonOn: aCanvas
	aCanvas submitButton
		callback: [ self registrarEIniciarSesion ];
		with: 'Registrarse'