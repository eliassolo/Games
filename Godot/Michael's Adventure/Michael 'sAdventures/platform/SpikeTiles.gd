
extends Area2D

signal spikeDamage

func _on_SpikeTiles_body_entered(body):
	if body.name == "michael":
		emit_signal("spikeDamage")
		body.hurt()
