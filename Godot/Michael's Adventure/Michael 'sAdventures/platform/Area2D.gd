extends Area2D

signal FallDetectorLava
func _ready():
	pass


func _on_Area2D_body_entered(body):
	if body.name == "michael":
		emit_signal("FallDetectorLava")
