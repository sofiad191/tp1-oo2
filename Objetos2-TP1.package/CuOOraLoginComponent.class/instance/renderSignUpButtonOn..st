rendering
renderSignUpButtonOn: aCanvas
	aCanvas submitButton
		callback: [ self registrarNuevoUsuario];
		with: 'Registrate, es gratis!'