extends Area2D

var texture = preload("res://Playing Cards/ace_of_hearts.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite2D.texture = texture


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
