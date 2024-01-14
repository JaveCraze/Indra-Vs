extends Label
@onready var player = get_node("/root/World/Player")
@onready var timer = get_node("/root/World/Player/SlideTimer")
@onready var speed = player.SPEED

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#if player.slidetimer == true:
		text = str(speed).pad_decimals(2)

