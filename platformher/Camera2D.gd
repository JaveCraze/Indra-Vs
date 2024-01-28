extends Camera2D
#@onready var player = Gamemanager.player

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


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
	if Gamemanager.player.state == Gamemanager.player.Jumping or Gamemanager.player.state == Gamemanager.player.Falling:
		position_smoothing_speed = 7
	else:
		position_smoothing_speed = 10

