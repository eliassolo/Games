extends KinematicBody2D

signal michaelStop
signal End
var velocity = Vector2(0,0)
var gravity = 30
var dogAmim = false
var dogStop = false


func _on_Area2D_body_entered(body):
	if body.name == "michael":
		emit_signal("michaelStop")
		dogAmim = true
		velocity.x = 100
		if dogAmim == true :
			$AnimatedSprite.play("movement")
		


func _physics_process(_delta):
	if dogAmim == false:
		$AnimatedSprite.play("idle")
	velocity.y = velocity.y +gravity
	velocity = move_and_slide(velocity)




func _on_CloseRangeMichaelDetector_body_entered(body):
	if body.name == "michael":
		dogAmim = true
		velocity.x = 0
		if dogAmim == true :
			$AnimatedSprite.play("idle")
			$EndTimer.wait_time = 1
			$EndTimer.start()
			emit_signal("End")
		



func _on_EndTimer_timeout():
	emit_signal("End")
