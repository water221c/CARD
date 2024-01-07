extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_deck_draw_card(card, card_texture):
	var new_card = card.instantiate()
	add_child(new_card)
	if(new_card.has_method("choose_card")):
		new_card.choose_card(card_texture)
	
