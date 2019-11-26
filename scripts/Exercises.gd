extends Node2D

onready var menImage = $Sprite
onready var koteImage = $Sprite2
onready var doImage = $Sprite3
onready var tsukiImage = $Sprite4

var images = []
# Called when the node enters the scene tree for the first time.
func _ready():
	images = [menImage, koteImage, doImage, tsukiImage]
	


func _setImage(index):
	for image in images:
		if image != images[index]:
			image.hide()
		else:
			image.show()
	
	
	

