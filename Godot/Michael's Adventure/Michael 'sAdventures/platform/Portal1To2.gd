extends Area2D

onready var coinLogic1 = get_node("/root/Autoload")

func _ready():
	$AnimatedSprite.play("portal")



func _on_Portal1To2_body_entered(body):
	if body.name == "michael":
		coinLogic1.coinAutoloadClone1 += coinLogic1.coinAutoload
		coinLogic1.diamondAutoloadClone1 += coinLogic1.diamondAutoload
		var _scene_changed = get_tree().change_scene("res://level2.tscn")
		assert(_scene_changed == OK)

