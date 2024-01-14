extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _on_player_paused():
	hide()

func _on_player_unpaused():
	show()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
