extends StaticBody2D

func _ready():
	update_walls()

func _notification(what):
	if what == NOTIFICATION_RESIZED:
		update_walls()

func update_walls():
	var viewport_size = get_viewport_rect().size
	var wall_thickness = 20  

	# Get the CollisionShape2D nodes dynamically
	var left_wall = get_child(0)
	var right_wall = get_child(1)
	var top_wall = get_child(2)
	var bottom_wall = get_child(3)

	# Update shapes
	left_wall.shape.extents = Vector2(wall_thickness / 2, viewport_size.y / 2)
	right_wall.shape.extents = Vector2(wall_thickness / 2, viewport_size.y / 2)
	top_wall.shape.extents = Vector2(viewport_size.x / 2, wall_thickness / 2)
	bottom_wall.shape.extents = Vector2(viewport_size.x / 2, wall_thickness / 2)

	# Positioning
	left_wall.global_position = Vector2(-wall_thickness / 2, viewport_size.y / 2)
	right_wall.global_position = Vector2(viewport_size.x + wall_thickness / 2, viewport_size.y / 2)
	top_wall.global_position = Vector2(viewport_size.x / 2, -wall_thickness / 2)
	bottom_wall.global_position = Vector2(viewport_size.x / 2, viewport_size.y + wall_thickness / 2)
