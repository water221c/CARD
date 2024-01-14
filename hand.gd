extends PanelContainer

var lastUserCard
var lastEnemyCard

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func create_card(card, cardTexture, cardValue):
	var newCard = card.instantiate()
	newCard.add_to_group("cards")
	var numOfCards = get_tree().get_nodes_in_group("cards")
	newCard.scale = Vector2(0.7 * size.y / 328, 0.7 * size.y / 328)
	newCard.i = numOfCards.size() - 1
	add_child(newCard)
	get_tree().call_group("cards", "change_pos", numOfCards, get_node("."))
	if(newCard.has_method("choose_card")):
		newCard.choose_card(cardTexture, cardValue)
	lastUserCard = newCard
	#print(numOfCards)


func create_enemy_card(card, cardTexture, cardValue):
	var newCard = card.instantiate()
	newCard.add_to_group("enemy_cards")
	var numOfCards = get_tree().get_nodes_in_group("enemy_cards")
	newCard.scale = Vector2(0.7 * size.y / 328, 0.7 * size.y / 328)
	newCard.i = numOfCards.size() - 1
	add_child(newCard)
	get_tree().call_group("enemy_cards", "change_pos", numOfCards, get_node("."))
	if(newCard.has_method("choose_card")):
		newCard.choose_card(cardTexture, cardValue)
	lastEnemyCard = newCard
	#print(numOfCards)

func send_hand_size():
	return get_tree().get_nodes_in_group("cards").size()

func clear_hand():
	for card in get_tree().get_nodes_in_group("cards"):
		if(card.has_method("delete")):
			card.delete()
	for card in get_tree().get_nodes_in_group("enemy_cards"):
		if(card.has_method("delete")):
			card.delete()

