extends CharacterBody2D
@onready var imageennemi = false

# Nommer la variable qui va gérer la vitesse des déplacements
# = Vector2(100,0)

#Gestion des déplacements de l'ennemi : 
#func _physics_process(delta):
#Nommer la variable qui va gérer les collisions avant le move_and_collide
#Intégrer le nom de la variable qui gère les déplacements entre les parenthèses
#	 = move_and_collide(nom_variable_deplacement * delta)

# Condition pour gérer la collision : intégrer les noms de vos variables 
#	if nom_variable_collision:
#		# Rebond pour changer de direction : intégrer le nom de vos variables
#		nom_variable_deplacement = nom_variable_deplacement.bounce(nom_variable_collision.get_normal())

# Ajouter une ligne de code pour retourner l'image du personnage quand il change de côté
#		
