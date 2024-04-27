
extends Node2D
@onready var nodepnj = get_tree().get_nodes_in_group("pnjs")

var textpnj = false

func _ready():
	for child in nodepnj:
		var txtdef = child.find_children("textdef")
		var txtplaceholder = child.find_children("textplaceholder")
		for textedef in txtdef:
			textedef.hide()
		for texteplaceholder in txtplaceholder:
			texteplaceholder.hide()


func _on_area_2d_area_entered(area):
	for child in nodepnj:
		var txtdef = area.find_children("textdef")
		var txtplaceholder = area.find_children("textplaceholder")
		if textpnj == true:
			for textedef in txtdef:
				textedef.show()
			for texteplaceholder in txtplaceholder:
				texteplaceholder.hide()
		else:
			for textedef in txtdef:
				textedef.hide()
			for texteplaceholder in txtplaceholder:
				texteplaceholder.show()		


#
func _on_area_2d_area_exited(area):
	for child in nodepnj:
		var txtdef = child.find_children("textdef")
		var txtplaceholder = child.find_children("textplaceholder")
		for textedef in txtdef:
			textedef.hide()
		for texteplaceholder in txtplaceholder:
			texteplaceholder.hide()
		
