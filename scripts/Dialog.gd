extends Node2D

onready var texto = $AnimationPlayer/DialogText/texto
onready var tempo = $tempo
onready var anim = $AnimationPlayer

onready var stringPrinted = "This is a test"


func _ready():
	tempo.set_wait_time(.05)
	tempo.start()
	anim.play("professor_show")
	yield(anim, "animation_finished")
	_writeText()



func _writeText():
	var letter = ""
	for letter in stringPrinted:
		texto.add_text(letter)
		yield(tempo, "timeout")


