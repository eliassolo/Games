extends KinematicBody2D

const gravity = 30
var velocity = Vector2(0,0)
export var enemyDirect =-1 
var setVelocity0 = false

signal healthChanged
signal AddCoin
func _physics_process(_delta)->void:
	
	
	if setVelocity0 == false:
		if is_on_wall() or not $enemyFloorDetector.is_colliding():
			enemyDirect = enemyDirect * -1
			$enemyFloorDetector.position.x = $CollisionShape2D.shape.get_extents().x *enemyDirect
			
		if enemyDirect==-1:
			velocity.x = -100
			$AnimatedSprite.flip_h = false
		elif enemyDirect==1:
			$AnimatedSprite.flip_h = true
			velocity.x =100
	elif setVelocity0 == true:
		velocity.x = 0
	velocity.y = velocity.y+gravity
	
	var snap = Vector2.DOWN *gravity  
	
	velocity = move_and_slide_with_snap(velocity,snap,Vector2.UP)


func _on_enemy1Hitbox_body_entered(body):
	if body.name == "michael":
		if $"/root/Autoload".soundEffects == true:
			$damageAudio.play()
			$coinAudio.play()
		elif $"/root/Autoload".soundEffects == false:
			$damageAudio.stop()
			$coinAudio.stop()
		emit_signal("AddCoin")
		setVelocity0 = true
		velocity.x = 0
		$AnimationPlayer.play("Enemy1hurt")
		$DeleteEnemyTimer.wait_time = 0.5
		$DeleteEnemyTimer.start()
		set_collision_layer_bit(4,false)
		set_collision_mask_bit(0,false)
		$enemy1Hitbox.set_collision_layer_bit(4,false)
		$enemy1Hitbox.set_collision_mask_bit(0,false)
		$sideEnemyMichaelHitbox.set_collision_layer_bit(4,false)
		$sideEnemyMichaelHitbox.set_collision_mask_bit(0,false)
		body.bounce()


func _on_sideEnemyMichaelHitbox_body_entered(body):
	if body.name == "michael":
		if $"/root/Autoload".soundEffects == true:
			$MichaelDamageAudio.play()
		elif $"/root/Autoload".soundEffects == false:
			$MichaelDamageAudio.stop()
		emit_signal("healthChanged")
		body.hurt()

func _on_DeleteEnemyTimer_timeout():
	queue_free()
	
