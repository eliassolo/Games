extends Node2D
signal crowDamage

export var crowPos = false
func _ready():
	if crowPos == true:
		$KinematicBody2D/AnimatedSprite.flip_h = false
		$KinematicBody2D/crowHitBox/CollisionShape2D.rotation_degrees = 49.5
		
	$AnimationPlayer.play("crowMovement")
	$KinematicBody2D/AnimatedSprite.play("CrowAnim")

func _on_crowHitBox_body_entered(body):
	if body.name == "michael":
		emit_signal("crowDamage")
		body.hurt()




func _on_crowSoundDetector_body_entered(_body):
	if $"/root/Autoload".soundEffects == true:
		$crowSoundDetector/AudioStreamPlayer2D.play()
	elif $"/root/Autoload".soundEffects == false:
		$crowSoundDetector/AudioStreamPlayer2D.stop()



func _on_crowSoundDetector_body_exited(_body):
	$crowSoundDetector/AudioStreamPlayer2D.stop()
