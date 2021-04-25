rendering
renderEncabezadoDePreguntaOn: aCanvas.
	aCanvas heading
		level: 2;
		with: pregunta titulo.
	aCanvas break.
	self renderUserOn: aCanvas.