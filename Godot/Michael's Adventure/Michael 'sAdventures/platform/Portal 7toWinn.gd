extends Area2D

func _ready():
	set_modulate(Color(0,1,0.2))
	$AnimatedSprite.play("portal")


func _on_Portal_7toWinn_body_entered(body):
	if body.name == "michael":
		var _scene_changed = get_tree().change_scene("res://WinnerStage.tscn")
		assert(_scene_changed == OK)

