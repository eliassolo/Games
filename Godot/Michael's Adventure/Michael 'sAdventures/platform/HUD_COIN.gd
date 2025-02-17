extends CanvasLayer

onready var CoinSave = get_node("/root/Autoload")


func _ready():
	$CoinLabel.text = String(CoinSave.coinAutoload)
	if CoinSave.coinAutoload >=100:
		get_node("CoinLabel").get("custom_fonts/font").set_size(16)
		$CoinLabel.rect_position = Vector2(112.472,43)
	elif CoinSave.coinAutoload <100:
		get_node("CoinLabel").get("custom_fonts/font").set_size(24)
		$CoinLabel.rect_position = Vector2(112.472,40)


func _on_coin_coinIsCollected():
	CoinSave.coinAutoload = CoinSave.coinAutoload+1
	_ready()



func _on_FallDetectorLevel1_fallDetection1():
	if get_tree().current_scene:
		CoinSave.coinAutoload = CoinSave.coinAutoloadClone 
	elif get_tree().scene != get_tree().current_scene:
		CoinSave.coinAutoload = CoinSave.coinAutoload

func _on_FallDetectorL0_falldetector0():
	if get_tree().current_scene:
		CoinSave.coinAutoload = CoinSave.coinAutoload - CoinSave.coinAutoload
	elif get_tree().scene != get_tree().current_scene:
		CoinSave.coinAutoload = CoinSave.coinAutoload
		
func _on_FallDetectorL2_FallDetectorL2():
	if get_tree().current_scene:
		CoinSave.coinAutoload = CoinSave.coinAutoloadClone1 
	elif get_tree().scene != get_tree().current_scene:
		CoinSave.coinAutoload = CoinSave.coinAutoload


func _on_FallDetectorL4_fallDetectorL4():
	if get_tree().current_scene:
		CoinSave.coinAutoload = CoinSave.coinAutoloadClone2
	elif get_tree().scene != get_tree().current_scene:
		CoinSave.coinAutoload = CoinSave.coinAutoload


func _on_michael_StuckOnCeiling():
	if get_tree().get_current_scene().get_name() == "trialLevel":
		CoinSave.coinAutoload = CoinSave.coinAutoload - CoinSave.coinAutoload
	elif get_tree().get_current_scene().get_name() == "level":
		CoinSave.coinAutoload = CoinSave.coinAutoloadClone 
	elif get_tree().get_current_scene().get_name() == "level2":
		CoinSave.coinAutoload = CoinSave.coinAutoloadClone1 
	elif get_tree().get_current_scene().get_name() == "level4":
		CoinSave.coinAutoload = CoinSave.coinAutoloadClone2
	elif get_tree().get_current_scene().get_name() == "level5":
		CoinSave.coinAutoload = CoinSave.coinAutoloadClone3
	elif get_tree().get_current_scene().get_name() == "level6":
		CoinSave.coinAutoload = CoinSave.coinAutoloadClone4
	elif get_tree().get_current_scene().get_name() == "level7":
		CoinSave.coinAutoload = CoinSave.coinAutoloadClone5






func _on_fallDetectorl5_fallDetectorl5():
	if get_tree().current_scene:
		CoinSave.coinAutoload = CoinSave.coinAutoloadClone3
	elif get_tree().scene != get_tree().current_scene:
		CoinSave.coinAutoload = CoinSave.coinAutoload




func _on_FallDetectorl6_FallDetectorL6():
	if get_tree().current_scene:
		CoinSave.coinAutoload = CoinSave.coinAutoloadClone4
	elif get_tree().scene != get_tree().current_scene:
		CoinSave.coinAutoload = CoinSave.coinAutoload



func _on_FallDetectorl7_fallDetectorl7():
	if get_tree().current_scene:
		CoinSave.coinAutoload = CoinSave.coinAutoloadClone5
	elif get_tree().scene != get_tree().current_scene:
		CoinSave.coinAutoload = CoinSave.coinAutoload
