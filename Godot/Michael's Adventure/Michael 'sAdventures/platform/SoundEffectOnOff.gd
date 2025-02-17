extends Node2D

onready var on = load("res://sprites/buttons/SoundEffectOn.png")
onready var off = load("res://sprites/buttons/SoundEffectOff.png")

onready var Music_On = load("res://sprites/buttons/Music_ON.png")
onready var Music_Off = load("res://sprites/buttons/Music_OFF.png")

func _ready():
	if $"/root/Autoload".soundEffects ==true:
		$SoundOnOff.normal = on
	elif $"/root/Autoload".soundEffects == false:
		$SoundOnOff.normal = off
	
	if $"/root/Autoload".musicEffect == true:
		$MusicOnOff.normal = Music_On
	elif $"/root/Autoload".musicEffect == false:
		$MusicOnOff.normal = Music_Off
	
	
func _on_SoundOnOff_pressed():
	if $"/root/Autoload".soundEffects == true:
		$"/root/Autoload".soundEffects = false
		$SoundOnOff.normal = off
	elif $"/root/Autoload".soundEffects == false:
		$"/root/Autoload".soundEffects = true
		$SoundOnOff.normal = on

func _on_MusicOnOff_pressed():
	if $"/root/Autoload".musicEffect == true:
		$"/root/Autoload".musicEffect = false
		$MusicOnOff.normal = Music_Off
	elif $"/root/Autoload".musicEffect == false:
		$"/root/Autoload".musicEffect = true
		$MusicOnOff.normal = Music_On


func _process(_delta):
	$"/root/Autoload"._MusicButton()

