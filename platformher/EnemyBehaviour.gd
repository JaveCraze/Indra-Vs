extends Label
@onready var parent = get_parent()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	match parent.behave:
		parent.Idle:
			text = ("idle")
		parent.Patrol:
			text = ("patrol")
		parent.Chase:
			text = ("chase")
