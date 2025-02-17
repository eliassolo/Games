extends Node
onready var heartload = false
onready var coinAutoload  = 0
onready var coinAutoloadClone = 0
onready var coinAutoloadClone1 = 0
onready var coinAutoloadClone2 = 0
onready var coinAutoloadClone3 = 0
onready var coinAutoloadClone4 = 0
onready var coinAutoloadClone5 = 0
onready var coinLogic_l0 = 0

onready var diamondAutoload =0
onready var diamondAutoloadClone = 0
onready var diamondAutoloadClone1 = 0
onready var diamondAutoloadClone2 = 0
onready var diamondAutoloadClone3 = 0
onready var diamondAutoloadClone4 = 0
onready var diamondAutoloadClone5 = 0

onready var health_texture = 4
onready var heartExistsAutoload = true
onready var heartExistsAutoloadClone = true
onready var heartL4 = true

onready var lavaPosition = 0

onready var fireBallBool = false

onready var MainMenu = true

onready var trophyAutoLoad = 0

onready var buttonVisibility = false

onready var soundEffects = true
onready var musicEffect = true

onready var half_music = load("res://sound/music/music.wav")



func _MusicButton():
	if musicEffect:
		if not $AudioStreamPlayer.playing:
			$AudioStreamPlayer.play()
	else:
		$AudioStreamPlayer.stop()
	 
	
