extends Area2D

signal DiamondIsCollected



func _on_diamod_body_entered(body):
	if body.name == "michael":
		if $"/root/Autoload".soundEffects == true:
			$AudioStreamPlayer2D.play()
		elif $"/root/Autoload".soundEffects == false:
			$AudioStreamPlayer2D.stop()
		$AnimationPlayer.play("diamondAnim")
		emit_signal("DiamondIsCollected")
		$CollisionPolygon2D.set_deferred("disabled", true)



func _on_AnimationPlayer_animation_finished(_anim_name):
	queue_free()
