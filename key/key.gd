extends Area


func _ready():
	pass


func _on_key_body_entered(body):
	if body.name == "Player":
		var exit = get_node_or_null("/root/Game/Maze/Exit")
		if exit:
			var sound = get_node_or_null("/root/Game/key")
			if sound != null:
				sound.playing = true
			exit.unlock()
			queue_free()
