extends Area2D

var card = preload("res://card.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_mouse_entered():
	if (Input.is_action_just_pressed("click")):
		var new_card = card.instantiate()
		
		add_child(new_card)
