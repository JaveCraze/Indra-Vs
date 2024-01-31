extends Node
@onready var player
@onready var camera
var current_checkpoint

func respawn_player():
	if current_checkpoint != null:
		player.position = current_checkpoint.global_position
