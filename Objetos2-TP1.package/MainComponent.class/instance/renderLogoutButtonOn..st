rendering
renderLogoutButtonOn: aCanvas
aCanvas anchor
				callback: [ self cerrarSesion ];
				with: [ aCanvas button with: 'Cerrar sesion' ]  