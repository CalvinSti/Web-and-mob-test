extends Button

func _ready():
	pressed.connect(_on_game3_button_pressed)

func _on_game3_button_pressed():
	get_tree().change_scene_to_file("Ggame3.tscn")
