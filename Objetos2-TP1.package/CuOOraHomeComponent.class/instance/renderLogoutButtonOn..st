rendering
renderLogoutButtonOn: aCanvas
	aCanvas
		paragraph: [ aCanvas anchor
				callback: [ self cerrarSesion ];
				with: [ aCanvas button with: 'Cerrar sesion' ] ]