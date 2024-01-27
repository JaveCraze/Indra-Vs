extends Camera2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Gamemanager.player.lookinleft == true:
		position.x = lerp(position.x, 30.0, .2)
	else:
		position.x = lerp(position.x, 30.0, .2)
	pass
