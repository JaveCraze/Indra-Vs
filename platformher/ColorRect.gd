extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_player_paused():
	show()
	print("paused!")

func _on_unpause_button_unpaused():
	hide()
	print("unpaused!")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


