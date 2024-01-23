extends Label
@onready var parent = get_parent()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if parent.state == parent.States.Ground:
		text = ("grounded")
	if parent.state == parent.States.Jumping:
		text = ("jumping")
	if parent.state == parent.States.Walking:
		text = ("walking")
	if parent.state == parent.States.Hit:
		text = ("hit")
	if parent.state == parent.States.Dead:
		text = ("dead")
