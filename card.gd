extends Area2D

var texture
var textureChange = false


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if (textureChange == true):
		$Sprite2D.texture = texture
		textureChange = false

func choose_card(card):
	texture = card
	textureChange = true
	print("change")
	show()
