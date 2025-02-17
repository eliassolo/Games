extends Area2D

signal SpikeDetectorL6

func _ready():
	pass


func _on_SpikeDetectorL6_body_entered(body):
	if body.name == "michael":
		emit_signal("SpikeDetectorL6")
		body.hurt()
