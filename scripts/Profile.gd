extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const FRENTE = 1
const COSTA = 2
var musclePosition = FRENTE

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_btnFrente_pressed():
	self.musclePosition =  FRENTE
	$Panel/MuscleBack.visible = false
	$Panel/MuscleFront.visible = true
	
func _on_btnCosta_pressed():
	self.musclePosition =  COSTA
	$Panel/MuscleFront.visible = false
	$Panel/MuscleBack.visible = true


