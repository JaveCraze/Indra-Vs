extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	await get_tree().create_timer(.7).timeout
	modulate.a = lerp(modulate.a, 0.0, .04)
