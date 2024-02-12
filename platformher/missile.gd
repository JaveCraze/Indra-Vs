extends Area2D

#var gravity = 0
#var velocity = Vector2.ZERO
var SPEED = 3
var move_x = -1.0
var move_y = 0

func _ready():
	add_to_group("parryableprojectile")

func _physics_process(_delta):
	position.x += (move_x * SPEED)
	position.y += (move_y * SPEED)

#func _on_VisibilityNotifier2D_screen_exited():
	#queue_free()

func hit():
	add_to_group("parried")
	#$Sparks.emitting = true
	#$Sparks.AnimationPlayer.play("spark")
	if Gamemanager.player.lookinleft == false:
		if move_x < 0:
			move_x = -move_x
			move_y = -move_y
			if Gamemanager.player.velocity.x > 200:
				move_x = (move_x * 1.8)
		if move_x > 0:
			if Gamemanager.player.velocity.x > 200:
				move_x *= 1.8
			else:
				move_x *= 1.5
	if Gamemanager.player.lookinleft == true:
		if move_x > 0:
			move_x = -move_x
			move_y = -move_y
			if Gamemanager.player.velocity.x > 200:
				move_x = (move_x * 1.8)
		if move_x < 0:
			if Gamemanager.player.velocity.x < -200:
				move_x *= 1.8
			else:
				move_x *= 1.5
	$Sprite2D.modulate = Color.YELLOW
	await get_tree().create_timer(0.1).timeout
	$Sprite2D.modulate = Color.WHITE


func _on_body_entered(body)-> void:
	if body.is_in_group("enemy"):
		print("foe!")
		if self.is_in_group("parried"):
			#explode()
			queue_free()
	else:
		#explode()
		queue_free()
