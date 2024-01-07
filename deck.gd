extends Area2D

var mouse = false

signal draw_card(card, card_texture)

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

var deck = [c2, c3, c4, c5, c6, c7, c8, c9, c10, cJ, cQ, cK, cA, d2, d3, d4, d5, d6, d7, d8, d9, d10, dJ, dQ, dK, dA, h2, h3, h4, h5, h6, h7, h8, h9, h10, hJ, hQ, hK, hA, s2, s3, s4, s5, s6, s7, s8, s9, s10, sJ, sQ, sK, sA]

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	deck.shuffle()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_just_released("click") && mouse):
		if (deck.size() <= 0):
			print("deck empty")
		else: 
			draw_card.emit(Card, deck[0])
			deck.remove_at(0)
			print("card")



func _on_mouse_entered():
	mouse = true


func _on_mouse_exited():
	mouse = false
