rendering
renderUsersOn: aCanvas
	aCanvas heading
		level: 3;
		with: 'Usuarios seguidos'.
	aCanvas
		unorderedList: [ self session usuario usuariosSeguidos
				do: [ :each | aCanvas listItem: each nombre ] ].
	aCanvas anchor
		callback: [ self findUsers ];
		with: [ aCanvas button: 'Encuentra usuarios' ]