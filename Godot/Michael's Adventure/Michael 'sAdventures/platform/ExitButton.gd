extends TouchScreenButton



func _on_ExitButton_pressed():
	if $"/root/Autoload".soundEffects == true:
		$AudioStreamPlayer2D.play()
	elif $"/root/Autoload".soundEffects == false:
		$AudioStreamPlayer2D.stop()


func _on_AudioStreamPlayer2D_finished():
	get_tree().quit()
	
