extends Control

func _ready():
	OS.low_processor_usage_mode = OS.get_name() != "Android"
	$"/root/Autoload".buttonVisibility = false

