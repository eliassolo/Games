extends Area2D

func _ready():
	$AnimatedSprite.play("portal")



func _on_Portal6To7_body_entered(body):
	if body.name == "michael":
		$"/root/Autoload".coinAutoloadClone5 +=$"/root/Autoload".coinAutoload
		$"/root/Autoload".diamondAutoloadClone5 += $"/root/Autoload".diamondAutoload
		var _scene_changed = get_tree().change_scene("res://level7.tscn")
		assert(_scene_changed == OK)
