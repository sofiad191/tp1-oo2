rendering
renderContentOn: aCanvas
	"Toda la info de pregunta + sus respuestas"

	super renderContentOn: aCanvas.
	self renderEncabezadoDePreguntaOn: aCanvas.
	self renderQuestionBodyOn: aCanvas fromQuestion: pregunta.
	self renderTopicOn: aCanvas.
	aCanvas break.
	self renderVotesOn: aCanvas fromPublication: pregunta.
	aCanvas break.
	self renderVotesButtonOn: aCanvas withPublication: pregunta.
	aCanvas break.
	self renderAnswersOn: aCanvas.
	aCanvas anchor
		callback: [ self answer ];
		with: [ aCanvas button: 'Volver' ]