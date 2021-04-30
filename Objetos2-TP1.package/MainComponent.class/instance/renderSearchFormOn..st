rendering
renderSearchFormOn: aCanvas
	aCanvas
		form: [ aCanvas textInput on: #textoBusqueda of: self.
			aCanvas space.
			aCanvas submitButton with: 'Buscar' ]