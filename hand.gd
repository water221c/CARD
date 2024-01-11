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
	newCard.add_to_group("cards")
	numOfCards = get_tree().get_nodes_in_group("cards")
	newCard.scale = Vector2(0.7, 0.7)
	newCard.i = i
	add_child(newCard)
	get_tree().call_group("cards", "change_pos", numOfCards, get_node("."))
	if(newCard.has_method("choose_card")):
		newCard.choose_card(cardTexture)

func send_hand_size():
	return get_tree().get_nodes_in_group("cards").size()

func clear_hand():
	i = 0
	for card in get_tree().get_nodes_in_group("cards"):
		if(card.has_method("delete")):
			card.delete()
