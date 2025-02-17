extends Area2D


func _on_GhostDetector_body_entered(body):
	if body.name == "michael":
		get_tree().change_scene("res://game over.tscn")
		print("changed the scene")
