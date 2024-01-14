extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Gamemanager.player.is_on_wall():
		text = "Is On Wall: Yes"
	else:
		text = "Is On Wall: No"
