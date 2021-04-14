rendering
renderContentOn: aCanvas
	aCanvas
		form: [ aCanvas heading: 'Texto'.
			(aCanvas textArea on: #textoRespuesta of: self)
				columns: 40;
				rows: 5.
			aCanvas break.
			aCanvas submitButton
				callback: [ self responder ];
				with: 'Responder a la pregunta' ]