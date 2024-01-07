class_name CardStats

var name: String = "N/A"
var strength: int = -1
var texture: Resource

func _init(name: String, strength: int, texture):
	self.name = name
	self.strength = strength
	self.texture = texture

func get_strength():
	return strength
