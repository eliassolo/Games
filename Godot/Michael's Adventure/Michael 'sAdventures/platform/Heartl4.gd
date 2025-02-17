extends Area2D
signal heartIsCollected


func _ready():
	if $"/root/Autoload".heartL4 == true:
		set_collision_layer_bit(13,true)
		set_collision_mask_bit(1,true)
		set_modulate(Color(1,1,1,1))
	elif $"/root/Autoload".heartL4 == false:
		set_collision_layer_bit(13,false)
		set_collision_mask_bit(1,false)
		set_modulate(Color(0,0,0,0))
		


func _on_Heartl4_body_entered(body):
	if body.name == "michael":
		$AnimationPlayer.play("heartCollect")
		emit_signal("heartIsCollected")
	if $"/root/Autoload".heartL4 == true &&$"/root/Autoload".soundEffects == true:
		$AudioStreamPlayer.play()
	elif  $"/root/Autoload".heartL4 == true &&$"/root/Autoload".soundEffects == false:
		$AudioStreamPlayer.stop()
	
	elif $"/root/Autoload".heartL4 == false:
		$AudioStreamPlayer.stop()


func _on_AnimationPlayer_animation_finished(_anim_name):
	$"/root/Autoload".heartL4 = false
	set_collision_layer_bit(13,false)
	set_collision_mask_bit(1,false)
	set_modulate(Color(0,0,0,0))
	queue_free()

