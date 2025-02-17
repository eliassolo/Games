extends Area2D

signal FallDetectorL6
onready var velocity = Vector2(0,0)
const speed = -18

func _physics_process(delta):
	  position.y += speed * delta
	

func _ready():
	$KinematicBody2D/AnimatedSprite.play("fire")


func _on_FallDetectorL6_body_entered(body):
	if body.name == "michael":
		if $"/root/Autoload".soundEffects == true:
			$AudioStreamPlayer.play()
		elif $"/root/Autoload".soundEffects == false:
			$AudioStreamPlayer.stop()
			$Timer.wait_time =1
			$Timer.start()
		$KinematicBody2D/CollisionShape2D.set_deferred("disabled", true)
	else:
		$KinematicBody2D/CollisionShape2D.set_deferred("disabled",true)


func _on_AudioStreamPlayer_finished():
	emit_signal("FallDetectorL6")


func _on_Timer_timeout():
	emit_signal("FallDetectorL6")
