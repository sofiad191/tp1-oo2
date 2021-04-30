rendering
renderContentOn: aCanvas
	super renderContentOn: aCanvas.
	aCanvas heading: 'Preguntas de ' , self topicoAMostrar nombre.
	aCanvas break.
	aCanvas anchor
		callback: [ self answer ];
		with: [ aCanvas span: [ aCanvas button: 'Volver' ] ].
	self renderQuestionFromTopicOn: aCanvas