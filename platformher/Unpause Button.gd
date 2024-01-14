extends ColorRect
signal paused
signal unpaused


# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false

func _on_player_paused():
	show()
	$Unpause.disabled = false


func _on_unpause_pressed():
	get_tree().paused = false
	emit_signal("unpaused")
	print("clickity.")
	hide()
	$Unpause.disabled = true
