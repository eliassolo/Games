extends Area2D

signal fallDetectorL4




func _on_FallDetectorL4_body_entered(body):
	if body.name == "michael":
		if $"/root/Autoload".soundEffects == true:
			$AudioStreamPlayer.play()
		elif $"/root/Autoload".soundEffects == false:
			$AudioStreamPlayer.stop()
			$Timer.wait_time = 1
			$Timer.start()


func _on_AudioStreamPlayer_finished():
	emit_signal("fallDetectorL4")


func _on_Timer_timeout():
	emit_signal("fallDetectorL4")
