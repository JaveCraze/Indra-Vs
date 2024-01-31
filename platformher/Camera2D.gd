extends Camera2D
#@onready var player = Gamemanager.player

# Called when the node enters the scene tree for the first time.
func _ready():
	Gamemanager.camera = self


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Gamemanager.player.lookinleft:
		position.x = lerp(position.x, 30.0, .2)
	else:
		position.x = lerp(position.x, 30.0, .2)
	pass
	if Gamemanager.player.state == Gamemanager.player.Crouching:
		offset.y = lerp(offset.y, 100.0, .2)
	else:
		offset.y = lerp(offset.y, 0.0, .2)
		if Gamemanager.player.state == Gamemanager.player.Falling:
			offset.y = lerp(offset.y, 0.0, .8)
	if Gamemanager.player.state == Gamemanager.player.Jumping or Gamemanager.player.state == Gamemanager.player.Falling:
		position_smoothing_speed = 7
	else:
		position_smoothing_speed = 10

#func _on_body_entered(body):
	#if body name is Player and #if area is in group screen area:
	#check if characterbody entered room area
		#limit_left = screenarea.lefttoplimit.global_position.x
		#limit_top = screenarea.lefttoplimit.global_position.y
		#limit_right = screenarea.rightbottomlimit.global_position.x
		#limit_bottom = screenarea.rightbottomlimit.global_position.y
