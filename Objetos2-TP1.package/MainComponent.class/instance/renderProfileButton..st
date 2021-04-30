rendering
renderProfileButton: aCanvas
	aCanvas anchor
		callback: [ self goToProfile: self session usuario ];
		with: [ aCanvas span: [ aCanvas button: 'Ir a mi Perfil' ] ]