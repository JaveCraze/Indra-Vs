extends Area2D


@export var checkpoint = false
var activated = false


func activate():
	Gamemanager.current_checkpoint = self
	activated = true
	print("Checkpoint!")

func _on_body_entered(body):
	if body.name == "Player" and !activated:
		activate()
	#if name is player:
	#set player spawn position to this.
