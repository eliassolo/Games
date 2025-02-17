extends Area2D
signal wallJumpPower_upIsCollected

func _on_wallJumpPower_up_body_entered(body):
	if body.name =="michael":
		emit_signal("wallJumpPower_upIsCollected")
		queue_free()
