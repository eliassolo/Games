extends Area2D

signal spikeDamage

func _ready():
	pass


func _on_SpikeDetectorL5_body_entered(body):
	if body.name == "michael":
		emit_signal("spikeDamage")
		body.hurt()
