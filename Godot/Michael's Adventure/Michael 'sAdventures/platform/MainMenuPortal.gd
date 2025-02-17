extends Area2D


func _ready():
	pass


func _on_MainMenuPortal_body_entered(body):
	if body.name == "michael":
		$"/root/Autoload".MainMenu = false
		var _scene_changed = get_tree().change_scene("res://trialLevel.tscn")
		assert(_scene_changed == OK)
