extends Area2D
onready var coinSystem = get_node("/root/Autoload")
signal coinIsCollected

func _on_coins_body_entered(body):
	if body.name == "michael":
		if $"/root/Autoload".soundEffects == true:
			$AudioStreamPlayer2D.play()
		elif $"/root/Autoload".soundEffects == false:
			$AudioStreamPlayer2D.stop()
		$AnimationPlayer.play("CoinBounceAnim")
		emit_signal("coinIsCollected")
		$CollisionShape2D.set_deferred("disabled",true)




func _on_AnimationPlayer_animation_finished(_anim_name):
	queue_free()
