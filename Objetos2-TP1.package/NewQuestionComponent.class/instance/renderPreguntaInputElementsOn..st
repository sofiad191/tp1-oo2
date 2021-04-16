rendering
renderPreguntaInputElementsOn: aCanvas

	aCanvas label: 'Titulo'.
	aCanvas break.
	(aCanvas textArea placeholder:'Escriba aqui el titulo de su pregunta.';on: #tituloPregunta of: self)
		columns: 60;
		rows: 1.
	aCanvas break.
	
	aCanvas label: 'Descripcion'.
	aCanvas break.
	(aCanvas textArea placeholder: 'Escriba aqui el desarrollo de su pregunta.'; on: #descripcionPregunta of: self)
		columns: 60;
		rows: 10.
	aCanvas break.
	
	aCanvas label: 'Topicos'.
	aCanvas break.
	(aCanvas textArea placeholder:'Ingrese topicos separados por una coma' ;on: #topicosPregunta of: self)
		columns: 60;
		rows: 1.
	aCanvas break