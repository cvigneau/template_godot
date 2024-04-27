extends CharacterBody2D

#Créer une variable de vitesse et affecter lui une valeur
#Créer une variable de saut et affecter lui une valeur
#Créer une variable pour la gravité et affecter lui une valeur
#Créer une variable de vie

func _physics_process(delta):
	# Remplacer gravity par le nom de la variable pour la gravité 
	# Activer la ligne de code ci-dessous en la sélectionnant et en tappant Ctrl+K  
#	velocity.y += gravity * delta

#	Remplacer speed par le nom de la variable pour le saut
#   Activer la ligne de code ci-dessous en la sélectionnant et en tappant Ctrl+K  
#	velocity.x = Input.get_axis("left", "right") * speed

#Ne pas supprimer la ligne ci-dessous
	move_and_slide()

# Remplacer jump_speed par le nom de la variable de saut
#  Activer les deux lignes de code ci-dessous en les sélectionnant et en tappant Ctrl+K  
#	if Input.is_action_just_pressed("up") and is_on_floor():
#		velocity.y = jump_speed

#Si la vie est à zero : recharger la scène
#Ne pas supprimer la ligne pour recharger la scène : get_tree().reload_current_scene()
#		condition de vérification de la vie = 0
#		sous cette condition réinitialiser les variables gloables de vie et coin : la variables globale vie est  Variablesglobales.life et la variable globale pièces est  Variablesglobales.coin
#		get_tree().reload_current_scene()



#Gérer la récupération des pièces quand le joueur rentre en collision avec une pièce
#Une variable globale existe déjà pour les pièces : Variablesglobales.coin
#Remplacer "pass" par un calcul pour augmenter la variable pièce de "1"
func _on_area_2d_area_entered(area):
	if area.is_in_group("Coins"):
		pass
		area.queue_free()

#Si le joueur touche le drapeau "arrivée", réinitialiser les variables et recharger la scène
#Remplacer 
	if area.is_in_group("Arrivee"):
#si le nombres de pièces récoltées est égal au nombre de pièces sur la scène
		if Variablesglobales.coin == Variablesglobales.countcoins:
#Ajouter deux conditions ci-dessous pour réinitialiser la variable globale vie à 3 et la variables globales pièces à 0
#la variables globale vie est  Variablesglobales.life et la variable globale  pièces est  Variablesglobales.coin

#Ne pas supprimer la ligne ci-dessous qui recharge la scène
			get_tree().reload_current_scene()

#Si le joueur tombe dans le vide réinitialiser les variables et recharger la scène
	if area.is_in_group("Vide"):
#Recharger les variables ci-dessous et laisser la ligne qui réinitialise la scène
		get_tree().reload_current_scene()

#Gérer la baisse de la vie quand le joueur rentre en collision avec un ennemi
#Une variable gloable existe déjà pour la vie : Variablesglobales.life
#Remplacer "pass" par un calcul pour diminuer la valeur de la variable vie de "1"
func _on_area_2d_body_entered(body):
	if body.is_in_group("Ennemis"):
		pass

