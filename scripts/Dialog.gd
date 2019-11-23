extends Node2D

onready var texto = $Polygon2D/texto
onready var tempo = $tempo

onready var stringPrinted = "This is a test"


func _ready():
	tempo.set_wait_time(.1)
	tempo.start()
	_writeText()



func _writeText():
	var letter = ""
	for letter in stringPrinted:
		texto.add_text(letter)
		print(letter)
		yield(tempo, "timeout")

