extends CollisionShape2D

signal BugStuckOnFloor

func _ready():
	pass


func _on_Area2D_body_entered(body):
	if body.name == "michael":
		emit_signal("BugStuckOnFloor")
