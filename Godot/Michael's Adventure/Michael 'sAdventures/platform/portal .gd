extends Area2D


func _ready():
	$AnimatedSprite.play("portal")
	
	


func _on_portal__body_entered(body):
	if body.name == "michael":
		$"/root/Autoload".coinAutoloadClone4 +=$"/root/Autoload".coinAutoload
		$"/root/Autoload".diamondAutoloadClone4 += $"/root/Autoload".diamondAutoload
		var _scene_changed = get_tree().change_scene("res://level6.tscn")
		assert(_scene_changed == OK)

