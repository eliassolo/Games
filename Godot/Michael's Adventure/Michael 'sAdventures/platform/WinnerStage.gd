extends Control

func _ready():
	$"/root/Autoload".buttonVisibility = false
func _on_Dog_End():
	$AnimationPlayer.play("BlackPanelAnim")
	



func _on_AnimationPlayer_animation_finished(_anim_name):
	$"/root/Autoload".trophyAutoLoad = $"/root/Autoload".trophyAutoLoad+1 

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
	
	var _scene_changed = get_tree().change_scene("res://trialLevel.tscn")
	assert(_scene_changed == OK)
