extends Area2D


func _ready():
	$AnimatedSprite.play("portal")
	



func _on_portal4to5_body_entered(body):
	if body.name == "michael":
		$"/root/Autoload".coinAutoloadClone3+= $"/root/Autoload".coinAutoload
		$"/root/Autoload".diamondAutoloadClone3+=$"/root/Autoload".diamondAutoload
		var _scene_changed = get_tree().change_scene("res://level5.tscn")
		assert(_scene_changed == OK)

