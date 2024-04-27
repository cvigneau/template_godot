extends AudioStreamPlayer
@onready var musiqueniveau = load("res://Sons/Sonsdef/musiqueniveau.wav")
@onready var musique = load("res://Sons/Sons à remplacer/musique.wav")

@onready var sonniveau 
# Called when the node enters the scene tree for the first time.
func _ready():
	if sonniveau == true:
		self.set_stream(musiqueniveau)
		play()
	else:
		self.set_stream(musique)
		play()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
