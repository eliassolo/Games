extends CanvasLayer
onready var AutoDiamondLoad = get_node("/root/Autoload")


func _ready():
	$Label2.text = String(AutoDiamondLoad.diamondAutoload)
	

func _on_diamod_DiamondIsCollected():
	AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoload+1
	_ready()


func _on_FallDetectorLevel1_fallDetection1():
	if get_tree().current_scene:
		AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoloadClone
	elif get_tree().scene != get_tree().current_scene:
		AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoload




func _on_FallDetectorL0_falldetector0():
	if get_tree().current_scene:
		AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoload - AutoDiamondLoad.diamondAutoload
	elif get_tree().scene != get_tree().current_scene:

		AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoload



func _on_FallDetectorL2_FallDetectorL2():
	if get_tree().current_scene:
		AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoloadClone1
	elif get_tree().scene != get_tree().current_scene:
		AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoload



func _on_FallDetectorL4_fallDetectorL4():
	if get_tree().current_scene:
		AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoloadClone2
	elif get_tree().scene != get_tree().current_scene:
		AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoload


func _on_michael_StuckOnCeiling():
	if get_tree().get_current_scene().get_name() == "trialLevel":
		AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoload - AutoDiamondLoad.diamondAutoload
	elif get_tree().get_current_scene().get_name() == "level":
		AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoloadClone
	elif get_tree().get_current_scene().get_name() == "level2":
		AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoloadClone1	
	elif get_tree().get_current_scene().get_name() == "level4":
		AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoloadClone2


func _on_fallDetectorl5_fallDetectorl5():
	if get_tree().current_scene:
		AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoloadClone3
	elif get_tree().scene != get_tree().current_scene:
		AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoload





func _on_FallDetectorl6_FallDetectorL6():
	if get_tree().current_scene:
		AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoloadClone4
	elif get_tree().scene != get_tree().current_scene:
		AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoload



func _on_FallDetectorl7_fallDetectorl7():
	if get_tree().current_scene:
		AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoloadClone5
	elif get_tree().scene != get_tree().current_scene:
		AutoDiamondLoad.diamondAutoload = AutoDiamondLoad.diamondAutoload
