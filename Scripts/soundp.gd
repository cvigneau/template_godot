extends AudioStreamPlayer
@onready var sonsautplayer = load("res://Sons/Sonsdef/sautplayer.wav")
@onready var sonsaut = load("res://Sons/Sons à remplacer/saut.wav")

@onready var soncoupplayer = load("res://Sons/Sonsdef/playercoup.wav")
@onready var soncoup = load("res://Sons/Sons à remplacer/coup.wav")

@onready var soncoinplayer = load("res://Sons/Sonsdef/playercoin.wav")
@onready var soncoin = load("res://Sons/Sons à remplacer/coin.wav")

@onready var sonvictoireplayer = load("res://Sons/Sonsdef/playervictoire.wav")
@onready var sonvictoire = load("res://Sons/Sons à remplacer/victoire.wav")

var sonplayer = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_just_pressed("up"):
		if sonplayer == true :
			self.stream = sonsautplayer
			play()
		else:
			self.stream = sonsaut
			play()


func _on_area_2d_area_entered(area):
	if area.get_collision_layer() == 8:
		if sonplayer == true:
			self.stream = soncoupplayer
			play()
		else:
			self.stream = soncoup
			play()
	
	if area.is_in_group("Coins"):
		if sonplayer == true:
			self.stream = soncoinplayer
			play()
		else:
			self.stream = soncoin
			play()
	
	if area.is_in_group("Arrivee"):
		print("arrivee")
		if sonplayer == true:
			self.stream = sonvictoireplayer
			play()
		else:
			self.stream = sonvictoire
			play()
