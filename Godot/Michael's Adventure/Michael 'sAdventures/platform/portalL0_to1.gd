extends Area2D
onready var coinLogic = get_node("/root/Autoload")

func _ready():
	$AnimatedSprite.play("portal")
	
func _on_portalL0_to1_body_entered(body):
	if body.name == "michael":
		coinLogic.coinAutoloadClone += coinLogic.coinAutoload
		coinLogic.diamondAutoloadClone += coinLogic.diamondAutoload
		var _scene_changed = get_tree().change_scene("res://level.tscn")
		assert(_scene_changed == OK)
