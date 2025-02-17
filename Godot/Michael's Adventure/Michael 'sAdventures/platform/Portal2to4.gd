extends Area2D

onready var coinLogic = get_node("/root/Autoload")

func _ready():
	$AnimatedSprite.play("portal")
	

func _on_Portal2to4_body_entered(body):
	if body.name == "michael":
		coinLogic.coinAutoloadClone2 += coinLogic.coinAutoload
		coinLogic.diamondAutoloadClone2+= coinLogic.diamondAutoload
		var _scene_changed = get_tree().change_scene("res://level4.tscn")
		assert(_scene_changed == OK)


