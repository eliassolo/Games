extends KinematicBody2D

const speed = 180
const jumpForce = -1000
const gravity = 30

var velocity = Vector2(0,0)
var coinCount = 0
var jump = false

var PowerUpSmall = false
var michaelStuck = 0
var StuckOnFloor = false
var MainMenuAnim = false
var GhostMichael = false
var collisions = true
var winnerStopDog = false
var smallSize = true
var damage = load ("res://sound/sound effects/damage.wav")
var walk = load("res://sound/sound effects/walking.wav")
var level1 = false


signal StuckOnCeiling
signal SpikeBug 

func _physics_process(_delta)->void:
	
	if $"/root/Autoload".soundEffects == true:
		if velocity.x != 0 && is_on_floor():
			if !$walking.playing:
				$walking.stream = walk
				$walking.play()
		elif $walking.playing:
			$walking.stop()
	elif $"/root/Autoload".soundEffects == false:
		$walking.stop()
	
	
	if $"/root/Autoload".buttonVisibility == false:
		$ui/jump.set_modulate(Color(0,0,0,0))
		$ui/left.set_modulate(Color(0,0,0,0))
		$ui/right.set_modulate(Color(0,0,0,0))
	elif $"/root/Autoload".buttonVisibility == true:
		$ui/jump.set_modulate(Color(1,1,1,1))
		$ui/left.set_modulate(Color(1,1,1,1))
		$ui/right.set_modulate(Color(1,1,1,1))
	
	if GhostMichael == true:
		$Sprite.play("Ghost")
		velocity.y = -speed *2
		layers = false
	
	if Input.is_action_pressed("ui_right") && $"/root/Autoload".MainMenu == false &&GhostMichael == false:
		velocity.x = speed
		$Sprite.play("walk")
		$Sprite.flip_h = true
		if sign($Position2D.position.x) == -1:
			$Position2D.position.x = 1
		
	elif Input.is_action_pressed("ui_left") && $"/root/Autoload".MainMenu == false &&GhostMichael == false:
		emit_signal("SpikeBug")
		velocity.x = - speed
		$Sprite.play("walk")
		$Sprite.flip_h = false
		if sign($Position2D.position.x) == 1:
			$Position2D.position.x = -1
	
	elif $"/root/Autoload".MainMenu == false && GhostMichael == false:
		$walking.stop()
		$Sprite.play("stand")
	
	if not is_on_floor() && $"/root/Autoload".MainMenu == false &&GhostMichael == false:
		$Sprite.play("jump")
		velocity.y = velocity.y + gravity
		jump = false
	
	if Input.is_action_just_pressed("ui_jump") and  is_on_floor()  && $"/root/Autoload".MainMenu == false:
		if $"/root/Autoload".soundEffects == true:
			$jumpAudio.play()
		elif $"/root/Autoload".soundEffects == false:
			$jumpAudio.stop()
		velocity.y = jumpForce
		jump = true
	
	var snap = Vector2.DOWN *gravity if!jump else Vector2.ZERO
	
	velocity = move_and_slide_with_snap(velocity,snap,Vector2.UP)
	velocity.x= lerp(velocity.x,0,0.2)
	if is_on_ceiling():
		michaelStuck += _delta
	else :
		michaelStuck = 0
	
	if michaelStuck >3 :
		emit_signal("StuckOnCeiling")
	
	if MainMenuAnim == true  &&  get_tree().get_current_scene().get_name() == "MainMenu":
		velocity.x = speed
		$Sprite.play("walk")
	elif   get_tree().get_current_scene().get_name() == "WinnerStage"&& winnerStopDog == false:
		$"/root/Autoload".MainMenu = true
		$Sprite.flip_h = false
		velocity.x = -speed
		$Sprite.play("walk")
	elif   get_tree().get_current_scene().get_name() == "WinnerStage" && winnerStopDog == true:
		velocity.x = velocity.x
		$Sprite.play("stand")
	
func _on_Area2D_powerUpSmall_collected():
	if $"/root/Autoload".soundEffects == true:
		$powerUpSmall.play()
	elif $"/root/Autoload".soundEffects == false:
		$powerUpSmall.stop()
	$Sprite.scale = Vector2(0.1,0.1)
	$CollisionShape2D.scale = Vector2(0.15,0.15)
	$PowerUpSmallTimer.wait_time = 15
	$PowerUpSmallTimer.start()
	PowerUpSmall = true

func _on_HUD_HEARTS_killMichael():
	GhostMichael = true
	$GhostTimer.wait_time = 4
	$GhostTimer.start()

func bounce():
	velocity.y = jumpForce *0.8

func hurt():
	$damageAudio.stream = damage
	if $"/root/Autoload".soundEffects == true:
		$damageAudio.play()
	elif $"/root/Autoload".soundEffects == false:
		$damageAudio.stop()
	set_modulate(Color(1,0.4,0.4,0.5))
	$HitcolorTimer.wait_time = 0.3
	$HitcolorTimer.start()
	jump = true
	velocity.y = jumpForce *0.9
	if Input.is_action_pressed("ui_right")&& is_on_floor()==true:
		velocity.x = -900
	if Input.is_action_pressed("ui_left") && is_on_floor()==true:
		velocity.x = 900

	Input.action_release("ui_left")
	Input.action_release("ui_right") 


func _on_HitcolorTimer_timeout():
	set_modulate(Color(1,1,1,1))





func _on_PowerUpSmallTimer_timeout():
	$PowerUpSmallTimer2.wait_time = 0.5
	$PowerUpSmallTimer2.start()


func _on_PowerUpSmallTimer2_timeout():
	PowerUpSmall = false
	smallSize = false
	print(smallSize)
	if is_on_floor():
		position = Vector2(position.x,position.y -50)
		$CollisionShape2D.scale = Vector2(0.3,0.3)
		$Sprite.scale = Vector2(0.2,0.2)
	elif is_on_floor()==false:
		position = Vector2(position.x,position.y)
		$CollisionShape2D.scale = Vector2(0.3,0.3)
		$Sprite.scale = Vector2(0.2,0.2)



func _on_CollisionShape2D_BugStuckOnFloor():
	StuckOnFloor = true

func _on_PlayButton_michaelMainMenuAnim():
	MainMenuAnim = true


func _on_GhostTimer_timeout():
	queue_free()
	var changeScene = get_tree().change_scene("res://game over.tscn")
	assert(changeScene==OK)




func _on_Dog_michaelStop():
	winnerStopDog = true
	

