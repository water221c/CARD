extends Area2D

var texture = preload("res://Playing Cards/2_of_clubs.png")
var textureChange = false

var c2 = preload("res://Playing Cards/2_of_clubs.png")
var d2 = preload("res://Playing Cards/2_of_diamonds.png")
var h2 = preload("res://Playing Cards/2_of_hearts.png")
var s2 = preload("res://Playing Cards/2_of_spades.png")
var c3 = preload("res://Playing Cards/3_of_clubs.png")
var d3 = preload("res://Playing Cards/3_of_diamonds.png")
var h3 = preload("res://Playing Cards/3_of_hearts.png")
var s3 = preload("res://Playing Cards/3_of_spades.png")
var c4 = preload("res://Playing Cards/4_of_clubs.png")
var d4 = preload("res://Playing Cards/4_of_diamonds.png")
var h4 = preload("res://Playing Cards/4_of_hearts.png")
var s4 = preload("res://Playing Cards/4_of_spades.png")
var c5 = preload("res://Playing Cards/5_of_clubs.png")
var d5 = preload("res://Playing Cards/5_of_diamonds.png")
var h5 = preload("res://Playing Cards/5_of_hearts.png")
var s5 = preload("res://Playing Cards/5_of_spades.png")
var c6 = preload("res://Playing Cards/6_of_clubs.png")
var d6 = preload("res://Playing Cards/6_of_diamonds.png")
var h6 = preload("res://Playing Cards/6_of_hearts.png")
var s6 = preload("res://Playing Cards/6_of_spades.png")
var c7 = preload("res://Playing Cards/7_of_clubs.png")
var d7 = preload("res://Playing Cards/7_of_diamonds.png")
var h7 = preload("res://Playing Cards/7_of_hearts.png")
var s7 = preload("res://Playing Cards/7_of_spades.png")
var c8 = preload("res://Playing Cards/8_of_clubs.png")
var d8 = preload("res://Playing Cards/8_of_diamonds.png")
var h8 = preload("res://Playing Cards/8_of_hearts.png")
var s8 = preload("res://Playing Cards/8_of_spades.png")
var c9 = preload("res://Playing Cards/9_of_clubs.png")
var d9 = preload("res://Playing Cards/9_of_diamonds.png")
var h9 = preload("res://Playing Cards/9_of_hearts.png")
var s9 = preload("res://Playing Cards/9_of_spades.png")
var c10 = preload("res://Playing Cards/10_of_clubs.png")
var d10 = preload("res://Playing Cards/10_of_diamonds.png")
var h10 = preload("res://Playing Cards/10_of_hearts.png")
var s10 = preload("res://Playing Cards/10_of_spades.png")
var cJ = preload("res://Playing Cards/jack_of_clubs.png")
var dJ = preload("res://Playing Cards/jack_of_diamonds.png")
var hJ = preload("res://Playing Cards/jack_of_hearts.png")
var sJ = preload("res://Playing Cards/jack_of_spades.png")
var cQ = preload("res://Playing Cards/queen_of_clubs.png")
var dQ = preload("res://Playing Cards/queen_of_diamonds.png")
var hQ = preload("res://Playing Cards/queen_of_hearts.png")
var sQ = preload("res://Playing Cards/queen_of_spades.png")
var cK = preload("res://Playing Cards/king_of_clubs.png")
var dK = preload("res://Playing Cards/king_of_diamonds.png")
var hK = preload("res://Playing Cards/king_of_hearts.png")
var sK = preload("res://Playing Cards/king_of_spades.png")
var cA = preload("res://Playing Cards/ace_of_clubs.png")
var dA = preload("res://Playing Cards/ace_of_diamonds.png")
var hA = preload("res://Playing Cards/ace_of_hearts.png")
var sA = preload("res://Playing Cards/ace_of_spades.png")

var deck = [c2, c3, c4, c5, c6, c7, c8, c9, c10, cJ, cQ, cK, cA, d2, d3, d4, d5, d6, d7, d8, d9, d10, dJ, dQ, dK, dA, h2, h3, h4, h5, h6, h7, h8, h9, h10, hJ, hQ, hK, hA, s2, s3, s4, s5, s6, s7, s8, s9, s10, sJ, sQ, sK, sA]

# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite2D.texture = texture
	randomize()
	deck.shuffle()
	choose_card(deck[0])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if (textureChange == true):
		$Sprite2D.texture = texture
		textureChange = false

func choose_card(card):
	texture = card
	textureChange = true
	pass
