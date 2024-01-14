extends Area2D

var texture
var textureChange = false
var i
var value


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if (textureChange == true):
		$Sprite2D.texture = texture
		textureChange = false

func choose_card(card, cardValue):
	texture = card
	value = cardValue
	textureChange = true
	#print("change")
	show()

func change_pos(numOfCards, parent):
	position = Vector2(parent.size.x * i / (numOfCards.size()), parent.size.y / 2)
	

func delete():
	queue_free()

