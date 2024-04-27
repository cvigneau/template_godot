extends CharacterBody2D

#
# On crée une variable pour gérer la vitesse des déplacements
@export var deplacement = Vector2(100,0)


func _physics_process(delta):
	# On fait déplacer le personnage à la vitesse du déplacement et on gère les collisions
	var col = move_and_collide(deplacement * delta)
	# Si collision
	if col:
		# Rebond pour changer de direction
		deplacement = deplacement.bounce(col.get_normal())
		# Flip le personnage
		scale.x = scale.x * -1
