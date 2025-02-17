extends Area2D

signal spikeDetectorL4

func _on_spikeDetectorL4_body_entered(body):
	if body.name == "michael":
		emit_signal("spikeDetectorL4")
		body.hurt()
