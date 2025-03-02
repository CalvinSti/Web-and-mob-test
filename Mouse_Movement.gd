extends CharacterBody2D

func _process(delta):
	global_position.x = get_global_mouse_position().x
