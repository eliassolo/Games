extends Node2D


func _ready():
	OS.low_processor_usage_mode = OS.get_name() != "Android"
	$"/root/Autoload".MainMenu = false
	$"/root/Autoload".buttonVisibility = true


func _on_HUD_HEARTS_killMichael():
	$michael.position = Vector2(-1048,56)
	$michael/Camera2D.position = Vector2(0,0)



