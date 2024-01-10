extends PanelContainer

var numOfCards
var i = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func create_card(card, cardTexture):
	i += 1
	var newCard = card.instantiate()
	newCard.add_to_group("hand")
	numOfCards = get_tree().get_nodes_in_group("hand")
	newCard.scale = Vector2(0.7, 0.7)
	newCard.i = i
	add_child(newCard)
	get_tree().call_group("hand", "change_pos", numOfCards)
	if(newCard.has_method("choose_card")):
		newCard.choose_card(cardTexture)

func send_hand_size():
	return get_tree().get_nodes_in_group("hand").size()
