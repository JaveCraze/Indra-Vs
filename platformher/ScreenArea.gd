extends Area2D
@onready var lefttoplimit = $LeftTopLimit
@onready var rightbottomlimit = $RightBottomLimit

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_body_entered(_body):
	Gamemanager.camera.limit_left = lefttoplimit.global_position.x
	Gamemanager.camera.limit_top = lefttoplimit.global_position.y
	Gamemanager.camera.limit_right = rightbottomlimit.global_position.x
	Gamemanager.camera.limit_bottom = rightbottomlimit.global_position.y

func _on_body_exited(_body):
	print("leftscreen")
	pass # Replace with function body.
