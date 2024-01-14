extends Area2D

var mouse = false

signal draw_card(card, cardTexture, cardValue)
signal draw_opp_card(card, cardTexture, cardValue)
signal ask_hand_size()
signal clear_hand()

var Card = preload("res://card.tscn")

const c2 = preload("res://Playing Cards/2_of_clubs.png")
const d2 = preload("res://Playing Cards/2_of_diamonds.png")
const h2 = preload("res://Playing Cards/2_of_hearts.png")
const s2 = preload("res://Playing Cards/2_of_spades.png")
const c3 = preload("res://Playing Cards/3_of_clubs.png")
const d3 = preload("res://Playing Cards/3_of_diamonds.png")
const h3 = preload("res://Playing Cards/3_of_hearts.png")
const s3 = preload("res://Playing Cards/3_of_spades.png")
const c4 = preload("res://Playing Cards/4_of_clubs.png")
const d4 = preload("res://Playing Cards/4_of_diamonds.png")
const h4 = preload("res://Playing Cards/4_of_hearts.png")
const s4 = preload("res://Playing Cards/4_of_spades.png")
const c5 = preload("res://Playing Cards/5_of_clubs.png")
const d5 = preload("res://Playing Cards/5_of_diamonds.png")
const h5 = preload("res://Playing Cards/5_of_hearts.png")
const s5 = preload("res://Playing Cards/5_of_spades.png")
const c6 = preload("res://Playing Cards/6_of_clubs.png")
const d6 = preload("res://Playing Cards/6_of_diamonds.png")
const h6 = preload("res://Playing Cards/6_of_hearts.png")
const s6 = preload("res://Playing Cards/6_of_spades.png")
const c7 = preload("res://Playing Cards/7_of_clubs.png")
const d7 = preload("res://Playing Cards/7_of_diamonds.png")
const h7 = preload("res://Playing Cards/7_of_hearts.png")
const s7 = preload("res://Playing Cards/7_of_spades.png")
const c8 = preload("res://Playing Cards/8_of_clubs.png")
const d8 = preload("res://Playing Cards/8_of_diamonds.png")
const h8 = preload("res://Playing Cards/8_of_hearts.png")
const s8 = preload("res://Playing Cards/8_of_spades.png")
const c9 = preload("res://Playing Cards/9_of_clubs.png")
const d9 = preload("res://Playing Cards/9_of_diamonds.png")
const h9 = preload("res://Playing Cards/9_of_hearts.png")
const s9 = preload("res://Playing Cards/9_of_spades.png")
const c10 = preload("res://Playing Cards/10_of_clubs.png")
const d10 = preload("res://Playing Cards/10_of_diamonds.png")
const h10 = preload("res://Playing Cards/10_of_hearts.png")
const s10 = preload("res://Playing Cards/10_of_spades.png")
const cJ = preload("res://Playing Cards/jack_of_clubs.png")
const dJ = preload("res://Playing Cards/jack_of_diamonds.png")
const hJ = preload("res://Playing Cards/jack_of_hearts.png")
const sJ = preload("res://Playing Cards/jack_of_spades.png")
const cQ = preload("res://Playing Cards/queen_of_clubs.png")
const dQ = preload("res://Playing Cards/queen_of_diamonds.png")
const hQ = preload("res://Playing Cards/queen_of_hearts.png")
const sQ = preload("res://Playing Cards/queen_of_spades.png")
const cK = preload("res://Playing Cards/king_of_clubs.png")
const dK = preload("res://Playing Cards/king_of_diamonds.png")
const hK = preload("res://Playing Cards/king_of_hearts.png")
const sK = preload("res://Playing Cards/king_of_spades.png")
const cA = preload("res://Playing Cards/ace_of_clubs.png")
const dA = preload("res://Playing Cards/ace_of_diamonds.png")
const hA = preload("res://Playing Cards/ace_of_hearts.png")
const sA = preload("res://Playing Cards/ace_of_spades.png")

var deck = [[c2, 2], [c3, 3], [c4, 4], [c5, 5], [c6, 6], [c7, 7], [c8, 8], [c9, 9], [c10, 10], [cJ, 11], [cQ, 12], [cK, 13], [cA, 14], [d2, 2], [d3, 3], [d4, 4], [d5, 5], [d6, 6], [d7, 7], [d8, 8], [d9, 9], [d10, 10], [dJ, 11], [dQ, 12], [dK, 13], [dA, 14], [h2, 2], [h3, 3], [h4, 4], [h5, 5], [h6, 6], [h7, 7], [h8, 8], [h9, 9], [h10, 10], [hJ, 11], [hQ, 12], [hK, 13], [hA, 14], [s2, 2], [s3, 3], [s4, 4], [s5, 5], [s6, 6], [s7, 7], [s8, 8], [s9, 9], [s10, 10], [sJ, 11], [sQ, 12], [sK, 13], [sA, 14]]
var discard = []


var handSize = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	deck.shuffle()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_just_released("click") && mouse):
		if (deck.size() <= 0): #checks if deck is empty
			print("deck empty")
		else: 
			reshuffle()
			
			await get_tree().create_timer(1 / 600).timeout
			
			draw_user_card()
			
			draw_enemy_card()
			#get_hand_size()
			#if (handSize >= 8): #limits maximum hand size to arg minus 1
				#pass
			#else:
				#draw_card.emit(Card, deck[0][0], deck[0][1])
				#discard.append(deck[0])
				#deck.remove_at(0)
				#print("card")

#reshuffles the discard pile into the deck
func reshuffle():
	deck.append_array(discard)
	randomize()
	deck.shuffle()
	discard.clear()
	clear_hand.emit()

#asks main to send a request to Hand to return its card amount
func get_hand_size():
	ask_hand_size.emit()

#sets handSize var to returned int
func return_hand_size(size):
	handSize = size

func _on_mouse_entered():
	mouse = true

func _on_mouse_exited():
	mouse = false

#draws a card for the user
func draw_user_card():
	draw_card.emit(Card, deck[0][0], deck[0][1])
	discard.append(deck[0])
	deck.remove_at(0)
	#print("user card")

#draws a card for the opponent
func draw_enemy_card():
	draw_opp_card.emit(Card, deck[0][0], deck[0][1])
	discard.append(deck[0])
	deck.remove_at(0)
	#print("enemy card")
