extends Area2D

signal powerUpSmall_collected 

func _ready():
	pass

func _on_Area2D_body_entered(_body):
	if _body.name == "michael":
		queue_free()
		emit_signal("powerUpSmall_collected")




