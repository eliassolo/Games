extends Area2D

export var cloudORrock = 1
func _ready():
	if cloudORrock ==1:
		$StaticBody2D/AnimatedSprite.play("cloud stand")
		set_modulate(Color(1,1,1,1))
	elif cloudORrock !=1:
		$StaticBody2D/AnimatedSprite.play("cloud stand")
		set_modulate(Color(0,0,0,0.6))
func _on_cloud_body_shape_entered(_body_id, body, _body_shape, _area_shape):
	if body.name == "michael":
		if cloudORrock ==1:
			$StaticBody2D/AnimatedSprite.play("cloudAnim")
			set_modulate(Color(1,1,1,1))
		elif cloudORrock !=1:
			$StaticBody2D/AnimatedSprite.play("cloudAnim")
			set_modulate(Color(0,0,0,0.6))
		$StaticBody2D/Timer.wait_time = 1
		$StaticBody2D/Timer.start()

func _on_Timer_timeout():
	queue_free()
