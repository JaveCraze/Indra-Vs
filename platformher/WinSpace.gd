extends Area2D


func win():
	pass
	#transition to win scene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass 
	#Here's what we're gonna do:
	#When player is inside this space and presses "J" or whatever button, show win screen and transition to level select.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_body_entered(body):
	if body.name == "Player":
		print("YOU WIN")
		win()
