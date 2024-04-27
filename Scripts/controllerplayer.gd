extends CharacterBody2D

@export var speed = 500
@export var jump_speed = -1800
@export var gravity = 4000





func _physics_process(delta):

	# Add gravity every frame
	velocity.y += gravity * delta

	# Input affects x axis only
	velocity.x = Input.get_axis("left", "right") * speed

	move_and_slide()
	# Only allow jumping when on the ground
	if Input.is_action_just_pressed("up") and is_on_floor():
		velocity.y = jump_speed

	if Variablesglobales.life == 0:
		Variablesglobales.life = 3
		Variablesglobales.coin = 0
		get_tree().reload_current_scene()

	
func _on_area_2d_area_entered(area):
	if area.is_in_group("Coins"):
		Variablesglobales.coin = Variablesglobales.coin + 1
		area.queue_free()

	if area.is_in_group("Arrivee"):
		if Variablesglobales.coin == Variablesglobales.countcoins:
			Variablesglobales.life = 3
			Variablesglobales.coin = 0
			get_tree().reload_current_scene()

	if area.is_in_group("Vide"):
		Variablesglobales.life = 3
		Variablesglobales.coin = 0
		get_tree().reload_current_scene()


func _on_area_2d_body_entered(body):
	if body.is_in_group("Ennemis"):
		Variablesglobales.life = Variablesglobales.life - 1
		

