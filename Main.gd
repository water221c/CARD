extends Node2D

var userCardTog = false
var enemyCardTog = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (userCardTog && enemyCardTog):
		if ($Hand.lastUserCard.value > $EnemyHand.lastEnemyCard.value):
			$Win.show()
			$Deck.result(1)
		elif ($Hand.lastUserCard.value < $EnemyHand.lastEnemyCard.value):
			$Lose.show()
			$Deck.result(-1)
		else:
			$Draw.show()
			$Deck.result(0)
		userCardTog = false
		enemyCardTog = false


func _on_deck_draw_card(card, cardTexture, cardValue, fightToggle):
	$Win.hide()
	$Draw.hide()
	$Lose.hide()
	$Hand.call("create_card", card, cardTexture, cardValue)
	if (!fightToggle):
		drawn_user_card()

func _on_deck_draw_opp_card(card, cardTexture, cardValue, fightToggle):
	$Win.hide()
	$Draw.hide()
	$Lose.hide()
	$EnemyHand.call("create_enemy_card", card, cardTexture, cardValue)
	if (!fightToggle):
		drawn_enemy_card()

func _on_deck_ask_hand_size():
	$Deck.call("return_hand_size", $Hand.call("send_hand_size"))

func _on_deck_clear_hand():
	$Hand.call("clear_hand")

func _on_shuffle_pressed():
	$Deck.call("reshuffle")
	$Win.hide()
	$Draw.hide()
	$Lose.hide()

func drawn_user_card():
	userCardTog = true

func drawn_enemy_card():
	enemyCardTog = true


func _on_button_pressed():
	$Deck.play()


func _on_deck_update_text(userDeck, userDiscard, enemyDeck, enemyDiscard):
	$UserCards.set_text("Deck: " + str(userDeck) + ", Discard: " + str(userDiscard))
	$EnemyCards.set_text("Deck: " + str(enemyDeck) + ", Discard: " + str(enemyDiscard))
