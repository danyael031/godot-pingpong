extends Node2D

var PlayerScore = 0
var OponentScore = 0

func _ready():
	_restart_game()

func _process(delta):
	$MarcadorPlayer.text = str(PlayerScore)
	$MarcadorOponente.text = str(OponentScore)

func _restart_game():
	$Ball.is_moving = false
	$Ball.velocity = Vector2.ZERO
	$Ball.position = Vector2(960, 540)
	#$Ball.reset_ball()
	$RestartTimer.start()

# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.

func _on_arco_player_body_entered(body):
	if body is Ball:
		OponentScore += 1
	_restart_game()



func _on_arco_oponente_body_entered(body):
	if body is Ball:
		PlayerScore += 1
	_restart_game()

