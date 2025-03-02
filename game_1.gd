extends Node2D

@onready var brickObject = preload("breek.tscn")

var columns = 34
var rows = 7
var margin = 50

func _ready() -> void:
	setupLevel()
	

func setupLevel():
	
	for r in rows:
		for c in columns:
			
			var newBrick = brickObject.instantiate()
			add_child(newBrick)
			newBrick.position = Vector2(margin + (50 * c), margin + (45 * r))
			
func _process(delta: float) -> void:
	pass
