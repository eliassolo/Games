extends Area2D

signal spikeDetectorl7


func _on_spikeDetecttorl7_body_entered(body):
	if body.name == "michael":
		emit_signal("spikeDetectorl7")
		body.hurt()
