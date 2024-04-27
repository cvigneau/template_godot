@tool
extends Node2D
@export var image = true
@export var text = true
@export var prog = true
@export var son = true

@onready var nodeplayer = get_node("Player")
@onready var nodeennemis = get_tree().get_nodes_in_group("Ennemis")
@onready var nodeimage = get_tree().get_nodes_in_group("imagecharacter")
@onready var nodetxt = get_tree().get_nodes_in_group("txt")
@onready var nodeinterface = get_tree().get_nodes_in_group("interface")


@onready var controller = preload("res://Scripts/controllerplayer.gd")
@onready var controllermissing = preload("res://Scripts/controllermissing.gd")
@onready var controllerennemi = preload("res://Scripts/controllerennemi.gd")
@onready var controllerennemimissing = preload("res://Scripts/controllerennemimissing.gd")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Engine.is_editor_hint():
		
		for child in nodeimage:
			var imagedef = child.find_children("spritedef")
			var imageplaceholder = child.find_children("spriteplaceholder")
			for imgjdef in imagedef:
				if image == true:
					imgjdef.show()
				else:
					imgjdef.hide()
			for imgplaceholder in imageplaceholder:
				if image == true:
					imgplaceholder.hide()
				else:
					imgplaceholder.show()			
					
		for child in nodetxt:
			var txtdef = child.find_children("textdef")
			var txtplaceholder = child.find_children("textplaceholder")
			for textedef in txtdef:
				if text == true:
					textedef.show()
				else:
					textedef.hide()
			for texteplaceholder in txtplaceholder:
				if text == true:
					texteplaceholder.hide()
				else:
					texteplaceholder.show()	
		
		for child in nodeinterface:
			child.hide()
	
	if !Engine.is_editor_hint():
		for child in nodeinterface:
			child.show()
		
	if prog == false:
		$Player.set_script(controllermissing)
		for childennemi in nodeennemis:
			childennemi.set_script(controllerennemimissing)
	else:
		$Player.set_script(controller)
		for childennemi in nodeennemis:
			childennemi.set_script(controllerennemi)		
		


	


func _on_musiqueniveau_tree_entered():
	var sonlevel = get_node("Musiqueniveau") 
	if son == true:
		sonlevel.sonniveau = true
	else:
		sonlevel.sonniveau = false 
	

func _on_pnjs_tree_entered():
	var nodepnjs = get_node("Pnjs")
	if text == true:
		nodepnjs.textpnj = true
	else:
		nodepnjs.textpnj = false



func _on_player_tree_entered():
	var animp = get_node("Player/Sprite")
	if image == true:
		animp.imageplayer = true
	else:
		animp.imageplayer = false


func _on_ennemis_tree_entered():
	var anime = get_node("Ennemis/Ennemimob/Ennemi/Sprite")
	if image == true:
		anime.imageennemi = true
	else:
		anime.imageennemi = false
