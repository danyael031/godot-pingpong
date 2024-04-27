extends CharacterBody2D

const SPEED = 400.0

func _physics_process(delta):
	
	velocity.y = Input.get_axis("ui_up", "ui_down") * SPEED
	
	move_and_collide(velocity * delta)
