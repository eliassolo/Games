extends Node2D

signal HeartExistTrue
signal HeartExistFalse


func _ready():
	OS.low_processor_usage_mode = OS.get_name() != "Android"
	$"/root/Autoload".MainMenu = false
	if get_tree().get_current_scene().get_name() == "level4" && $"/root/Autoload".heartExistsAutoload == false:
		emit_signal("HeartExistTrue")
	elif get_tree().get_current_scene().get_name()== "level4" && $"/root/Autoload".heartExistsAutoload== true:
		$"/root/Autoload".heartExistsAutoload = false
		emit_signal("HeartExistFalse")
	

func _on_heart_heartAtLevels():
	$"/root/Autoload".heartExistsAutoload= true
	_ready()
