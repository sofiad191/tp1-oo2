rendering
renderContentOn: aCanvas
   aCanvas heading level: 1; with: 'CuOOra '.
   aCanvas horizontalRule .
	aCanvas heading level: 2; with:'Nueva Pregunta'.
	aCanvas form: [ self renderPreguntaInputElementsOn: aCanvas. 
			aCanvas submitButton
				callback: [ self preguntar ];
				with: 'Preguntar' .
		 ]