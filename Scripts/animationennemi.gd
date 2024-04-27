extends Node2D

@onready var imageennemi
# Called when the node enters the scene tree for the first time.
func _ready():
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if imageennemi == true:
		$spritedef.play()
	else:
		$spriteplaceholder.play()

#func _input(event):
#	if event is InputEventKey and Input.is_action_just_pressed("right"):
#		$spritedef.flip_h = false
#		$spriteplaceholder.flip_h = false
#		if imageplayer == true:
#			$spritedef.play()
#		else: 
#			$spriteplaceholder.play()
#
#	if event is InputEventKey and Input.is_action_just_released("right"):
#		$spritedef.flip_h = false
#		$spriteplaceholder.flip_h = false
#		if imageplayer == true:
#			$spritedef.stop()
#		else: 
#			$spriteplaceholder.stop()	
#
#
#	if event is InputEventKey and Input.is_action_just_pressed("left"):
#		$spritedef.flip_h = true
#		$spriteplaceholder.flip_h = true
#		if imageplayer == true:
#			$spritedef.play()
#		else: 
#			$spriteplaceholder.play()
#
#	if event is InputEventKey and Input.is_action_just_released("left"):
#		$spritedef.flip_h = true
#		$spriteplaceholder.flip_h = true
#		if imageplayer == true:
#			$spritedef.stop()
#		else: 
#			$spriteplaceholder.stop()


