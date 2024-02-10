extends Area2D

#var gravity = 0
#var velocity = Vector2.ZERO
var SPEED = 4
var move_x = -1.0
var move_y = 0.0

func _ready():
	add_to_group("parryableprojectile")

func _physics_process(delta):
	position.x += (move_x * SPEED)


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func hit():
	if Gamemanager.player.lookinleft == false:
		if move_x < 0:
			move_x = 1
		if Gamemanager.player.velocity.x > 200:
			move_x = 1.8
		if move_x > 0:
			if Gamemanager.player.velocity.x > 200:
				move_x *= 1.8
			else:
				move_x *= 1.5
	if Gamemanager.player.lookinleft == true:
		if move_x > 0:
			if Gamemanager.player.velocity.x < -200:
				move_x *= 1.8
			move_x = -1
		if move_x < 0:
			if Gamemanager.player.velocity.x < -200:
				move_x *= 1.8
			else:
				move_x *= 1.5
	$Sprite2D.modulate = Color.YELLOW
	await get_tree().create_timer(0.1).timeout
	$Sprite2D.modulate = Color.WHITE
