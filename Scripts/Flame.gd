extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var movement_dir = 'm'
	var mouse_pos_old = get_viewport().get_mouse_position()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Get the current mouse position from the viewport.
	var mouse_pos = get_viewport().get_mouse_position()
	
	# Set the position of the current node to the mouse position.
	position = mouse_pos


	if mouse_pos[0]>mouse_pos_old[0]:
		movement_dir = 'r'
	else if mouse_pos[0]<mouse_pos_old[0]:
		movement_dir = 'l'
	else:
		movement_dir = 'm'

	print(movement_dir)
	var mouse_pos_old = get_viewport().get_mouse_position()