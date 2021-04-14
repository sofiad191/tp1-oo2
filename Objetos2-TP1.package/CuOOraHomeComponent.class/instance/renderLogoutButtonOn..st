rendering
renderLogoutButtonOn: aCanvas
	aCanvas
		paragraph: [ aCanvas anchor
				callback: [ self answer ];
				with: [ aCanvas button with: 'Cerrar sesion' ] ]