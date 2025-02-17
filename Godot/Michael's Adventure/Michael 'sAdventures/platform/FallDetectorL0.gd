extends Area2D

signal falldetector0

func _ready():
	pass



func _on_FallDetectorL0_body_entered(body):
	if body.name == "michael" :
		if $"/root/Autoload".soundEffects == true:
			$AudioStreamPlayer.play()
		elif $"/root/Autoload".soundEffects == false:
			$AudioStreamPlayer.stop()
			$Timer.wait_time = 1
			$Timer.start()


func _on_AudioStreamPlayer_finished():
	emit_signal("falldetector0")

func _on_Timer_timeout():
	emit_signal("falldetector0")
