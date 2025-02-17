extends Area2D


func _ready():
	pass


func _on_FireBallPowerUp_body_entered(body):
	if body.name == "michael":
		$"/root/Autoload".fireBallBool = true
		queue_free()
