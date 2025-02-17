extends CanvasLayer
onready var autoloadHeartSystem = get_node("/root/Autoload")
signal killMichael


func _ready():
	$AnimatedSprite.play("Heart3")
	autoloadHeartSystem.heartload = false
	if autoloadHeartSystem.health_texture==4:
		$AnimatedSprite.play("Heart4")
	elif autoloadHeartSystem.health_texture==3:
		$AnimatedSprite.play("Heart3")
	elif autoloadHeartSystem.health_texture==2:
		$AnimatedSprite.play("Heart2")
	if autoloadHeartSystem.health_texture==1:
		$AnimatedSprite.play("Heart1")
	elif autoloadHeartSystem.health_texture==0:
		$AnimatedSprite.play("Heart0")
		emit_signal("killMichael")
		print("signal_Emmited")


func _on_FallDetectorLevel1_fallDetection1():
	autoloadHeartSystem.heartload = true
	autoloadHeartSystem.health_texture= autoloadHeartSystem.health_texture-1
	var _scene_changed = get_tree().change_scene("res://level.tscn")
	assert(_scene_changed == OK)
	if $"/root/Autoload".soundEffects == true:
		$damage.play()
	elif $"/root/Autoload".soundEffects == false:
		$damage.stop()
	_ready()


func _on_heart_heartIsCollected():
	if autoloadHeartSystem.health_texture ==4 && $"/root/Autoload".heartExistsAutoload==true:
		autoloadHeartSystem.health_texture = autoloadHeartSystem.health_texture
		_ready()
	elif autoloadHeartSystem.health_texture <4 && $"/root/Autoload".heartExistsAutoload == true:
		autoloadHeartSystem.health_texture = autoloadHeartSystem.health_texture +1
		_ready()
	elif autoloadHeartSystem.health_texture ==4 && $"/root/Autoload".heartExistsAutoload==false:
		autoloadHeartSystem.health_texture = autoloadHeartSystem.health_texture
		_ready()
	
	
func _on_skipeTilemapDamage_L1_spikeDamage():
	autoloadHeartSystem.health_texture = autoloadHeartSystem.health_texture-1
	if $"/root/Autoload".soundEffects == true:
		$damage.play()
	elif $"/root/Autoload".soundEffects == false:
		$damage.stop()
	_ready()
	

func _on_FallDetectorL0_falldetector0():
	autoloadHeartSystem.heartload = true
	autoloadHeartSystem.health_texture= autoloadHeartSystem.health_texture-1
	var _scene_changed = get_tree().change_scene("res://trialLevel.tscn")
	assert(_scene_changed == OK)
	if $"/root/Autoload".soundEffects == true:
		$damage.play()
	elif $"/root/Autoload".soundEffects == false:
		$damage.stop()
	_ready()

func _on_enemy1_healthChanged():
	autoloadHeartSystem.health_texture = autoloadHeartSystem.health_texture-1
	if $"/root/Autoload".soundEffects == true:
		$damage.play()
	elif $"/root/Autoload".soundEffects == false:
		$damage.stop()
	_ready()



func _on_FallDetectorL2_FallDetectorL2():
	autoloadHeartSystem.heartload = true
	autoloadHeartSystem.health_texture= autoloadHeartSystem.health_texture-1
	var _scene_changed = get_tree().change_scene("res://level2.tscn")
	assert(_scene_changed == OK)
	if $"/root/Autoload".soundEffects == true:
		$damage.play()
	elif $"/root/Autoload".soundEffects == false:
		$damage.stop()
	_ready()





func _on_FallDetectorL4_fallDetectorL4():
	autoloadHeartSystem.heartload = true
	autoloadHeartSystem.health_texture = autoloadHeartSystem.health_texture-1
	var _scene_changed = get_tree().change_scene("res://level4.tscn")
	assert(_scene_changed == OK)
	if $"/root/Autoload".soundEffects == true:
		$damage.play()
	elif $"/root/Autoload".soundEffects == false:
		$damage.stop()
	_ready()



func _on_michael_StuckOnCeiling():
	autoloadHeartSystem.heartload = true
	autoloadHeartSystem.health_texture = autoloadHeartSystem.health_texture-1
	var ReloadScene = get_tree().reload_current_scene()
	assert(ReloadScene==OK)
	if $"/root/Autoload".soundEffects == true:
		$damage.play()
	elif $"/root/Autoload".soundEffects == false:
		$damage.stop()
	_ready()




func _on_fallDetectorl5_fallDetectorl5():
	autoloadHeartSystem.heartload = true
	autoloadHeartSystem.health_texture = autoloadHeartSystem.health_texture-1
	var _scene_changed = get_tree().change_scene("res://level5.tscn")
	assert(_scene_changed == OK)
	if $"/root/Autoload".soundEffects == true:
		$damage.play()
	elif $"/root/Autoload".soundEffects == false:
		$damage.stop()
	_ready()

func _on_HeartL4_heartL4IsCollected():
	if autoloadHeartSystem.health_texture ==4 && $"/root/Autoload".heartExistsAutoloadClone==true:
		autoloadHeartSystem.health_texture = autoloadHeartSystem.health_texture
		_ready()
	elif autoloadHeartSystem.health_texture <4 && $"/root/Autoload".heartExistsAutoloadClone == true:
		autoloadHeartSystem.health_texture = autoloadHeartSystem.health_texture +1
		_ready()
	elif autoloadHeartSystem.health_texture ==4 && $"/root/Autoload".heartExistsAutoloadClone==false:
		autoloadHeartSystem.health_texture = autoloadHeartSystem.health_texture
		_ready()
	



func _on_FallDetectorl6_FallDetectorL6():
	autoloadHeartSystem.heartload = true
	autoloadHeartSystem.health_texture = autoloadHeartSystem.health_texture-1
	var _scene_changed = get_tree().change_scene("res://level6.tscn")
	assert(_scene_changed == OK)
	if $"/root/Autoload".soundEffects == true:
		$damage.play()
	elif $"/root/Autoload".soundEffects == false:
		$damage.stop()
	_ready()
	



func _on_Heartl4_heartIsCollected():
	if autoloadHeartSystem.health_texture ==4 && $"/root/Autoload".heartL4==true:
		autoloadHeartSystem.health_texture = autoloadHeartSystem.health_texture
		_ready()
	elif autoloadHeartSystem.health_texture <4 && $"/root/Autoload".heartL4 == true:
		autoloadHeartSystem.health_texture = autoloadHeartSystem.health_texture +1
		_ready()
	elif autoloadHeartSystem.health_texture ==4 && $"/root/Autoload".heartL4==false:
		autoloadHeartSystem.health_texture = autoloadHeartSystem.health_texture
		_ready()
	


func _on_crowHitBox_body_entered():
	autoloadHeartSystem.health_texture = autoloadHeartSystem.health_texture-1
	_ready()
	


func _on_FallDetectorl7_fallDetectorl7():
	autoloadHeartSystem.heartload = true
	autoloadHeartSystem.health_texture = autoloadHeartSystem.health_texture-1
	var _scene_changed = get_tree().change_scene("res://level7.tscn")
	assert(_scene_changed == OK)
	_ready()



