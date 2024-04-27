extends Node

@onready var coin = 0
@onready var life = 3

@onready var countcoins = get_tree().get_nodes_in_group("Coins").size()


func _ready():
	print(countcoins)
