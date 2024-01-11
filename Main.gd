extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_deck_draw_card(card, cardTexture):
	$Hand.call("create_card", card, cardTexture)

func _on_deck_ask_hand_size():
	$Deck.call("return_hand_size", $Hand.call("send_hand_size"))

func _on_deck_clear_hand():
	$Hand.call("clear_hand")


func _on_shuffle_pressed():
	$Deck.call("reshuffle")
