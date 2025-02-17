extends Node2D

func _ready():
	OS.low_processor_usage_mode = OS.get_name() != "Android"
	$"/root/Autoload".MainMenu = false
	$"/root/Autoload".buttonVisibility = true
