extends TouchScreenButton
var buttonColorChanged = false
signal michaelMainMenuAnim


func _on_PlayButton_pressed():
	emit_signal("michaelMainMenuAnim")
	if $"/root/Autoload".soundEffects == true:
		$AudioStreamPlayer2D.play()
	elif $"/root/Autoload".soundEffects == false:
		$AudioStreamPlayer2D.stop()
