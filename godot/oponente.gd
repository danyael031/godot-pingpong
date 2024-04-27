extends CharacterBody2D

const SPEED = 1000
@onready var ball = get_parent().find_child("Ball")

func _physics_process(delta):
	
	velocity.y = _get_oponent_direction() * SPEED
	#velocity.x = 0
	
	move_and_collide(velocity * delta)
	
func _get_oponent_direction():
	
	if abs(ball.position.y - position.y) > 50:
		if ball.position.y > position.y:
			return 1
		else:
			return -1
	else:
		return 0
		
