extends Area2D

signal heartIsCollected
signal heartAtLevels 

onready var heartExists = true

func _ready():
	if $"/root/Autoload".heartExistsAutoload == true:
		heartExists = true
	elif $"/root/Autoload".heartExistsAutoload == false:
		heartExists = false
	
	if heartExists == true:
		set_collision_layer_bit(13,true)
		set_collision_mask_bit(1,true)
		set_modulate(Color(1,1,1,1))
	
	if heartExists == false:
		set_collision_layer_bit(13,false)
		set_collision_mask_bit(1,false)
		set_modulate(Color(0,0,0,0))
	



func _on_heart_body_entered(body):
	if body.name == "michael":
		$AnimationPlayer.play("heartCollect")
		emit_signal("heartIsCollected")
		if heartExists == true && $"/root/Autoload".soundEffects == true:
			$AudioStreamPlayer.play()
		elif heartExists == true && $"/root/Autoload".soundEffects == false:
			$AudioStreamPlayer.stop()
		elif heartExists == false:
			$AnimationPlayer.stop()

func _on_AnimationPlayer_animation_finished(_anim_name):
	heartExists = false
	$"/root/Autoload".heartExistsAutoload = false
	set_collision_layer_bit(13,false)
	set_collision_mask_bit(1,false)
	set_modulate(Color(0,1,0,0))
	emit_signal("heartAtLevels")


func _on_level4_HeartExistFalse():
	$"/root/Autoload".heartExistsAutoload = false
	_ready()


func _on_level4_HeartExistTrue():
	$"/root/Autoload".heartExistsAutoload = true
	_ready()






