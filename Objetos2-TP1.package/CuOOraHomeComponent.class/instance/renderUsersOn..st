rendering
renderUsersOn: aCanvas
	aCanvas heading
		level: 3;
		with: 'Usuarios seguidos'.
	aCanvas
		unorderedList: [ self session usuario usuariosSeguidos
				do: [ :each | 
					[aCanvas anchor
						callback: [ self goToProfile: each ];
						with: [ aCanvas span: each nombre ].
					aCanvas break ] ]].
	aCanvas anchor
		callback: [ self findUsers ];
		with: [ aCanvas button: 'Encuentra usuarios' ]