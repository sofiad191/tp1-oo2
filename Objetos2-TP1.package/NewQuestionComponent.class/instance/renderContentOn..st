rendering
renderContentOn: aCanvas
	aCanvas
		form: [ aCanvas heading: 'Titulo'.
			(aCanvas textArea on: #tituloPregunta of: self)
				columns: 60;
				rows: 2.
			aCanvas break.
			aCanvas heading: 'Descripcion'.
			(aCanvas textArea on: #descripcionPregunta of: self)
				columns: 50;
				rows: 4.
			aCanvas break.
			aCanvas heading: 'Topicos'.
			(aCanvas textArea on: #topicosPregunta of: self)
				columns: 60;
				rows: 1.
			aCanvas break.
			aCanvas submitButton
				callback: [ self preguntar ];
				with: 'Preguntar' ]