extends TouchScreenButton



func _on_playAgainButton_pressed():
	if $"/root/Autoload".soundEffects == true:
		$AudioStreamPlayer2D.play()
		$"/root/Autoload".soundEffects = true
	elif $"/root/Autoload".soundEffects == false:
		$"/root/Autoload".soundEffects = false
		$AudioStreamPlayer2D.stop()
		$Timer.wait_time = 0.4
		$Timer.start()
	$"/root/Autoload".health_texture = 4
	
	$"/root/Autoload".coinAutoload = 0
	$"/root/Autoload".coinAutoloadClone = 0
	$"/root/Autoload".coinAutoloadClone1 = 0
	$"/root/Autoload".coinAutoloadClone2 = 0
	$"/root/Autoload".coinAutoloadClone3 = 0
	$"/root/Autoload".coinAutoloadClone4 = 0
	$"/root/Autoload".coinAutoloadClone5 = 0
	
	$"/root/Autoload".diamondAutoload = 0
	$"/root/Autoload".diamondAutoloadClone = 0
	$"/root/Autoload".diamondAutoloadClone1 = 0
	$"/root/Autoload".diamondAutoloadClone2 = 0
	$"/root/Autoload".diamondAutoloadClone3 = 0
	$"/root/Autoload".diamondAutoloadClone4 = 0
	$"/root/Autoload".diamondAutoloadClone5 = 0
	
	$"/root/Autoload".heartL4 = true
	$"/root/Autoload".heartExistsAutoload = true



func _on_AudioStreamPlayer2D_finished():
	var ChangeScene = get_tree().change_scene("res://trialLevel.tscn")
	assert(ChangeScene==OK)


func _on_Timer_timeout():
	var ChangeScene = get_tree().change_scene("res://trialLevel.tscn")
	assert(ChangeScene==OK)

