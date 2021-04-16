rendering
renderContentOn: aCanvas
	"Toda la info de pregunta + sus respuestas"

	aCanvas heading
		level: 1;
		with: pregunta titulo.
	aCanvas break.
	self renderUserOn: aCanvas.
	aCanvas break.
	self renderTopicOn: aCanvas.
	aCanvas break.
	self renderAnswersOn: aCanvas.
	aCanvas anchor
		callback: [ self answer ];
		with: [ aCanvas button: 'Volver' ]