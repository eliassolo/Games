extends Control

func _ready():
	OS.low_processor_usage_mode = OS.get_name() != "Android"
	if get_tree().get_current_scene().get_name() == "MainMenu":
		$"/root/Autoload".buttonVisibility = false

