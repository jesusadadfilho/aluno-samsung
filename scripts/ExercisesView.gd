extends Node2D

onready var images = $ImagesExecises
onready var tabs = $Tabs

# Called when the node enters the scene tree for the first time.
func _ready():
	images._setImage(0)
	

func _process(delta):
	images._setImage(tabs.currentTab)