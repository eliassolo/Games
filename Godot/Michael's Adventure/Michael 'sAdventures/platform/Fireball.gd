extends Area2D
var velocity =  Vector2(0,0)
const speed = 300
var direction = 1

func _ready():
	$AnimatedSprite.play("fireball")

func  setFireballDirection(direct):
	direction = direct
	if direct ==-1:
		$AnimatedSprite.flip_h = true

func _physics_process(delta):
	velocity.x = speed*delta*direction
	translate(velocity)
	
