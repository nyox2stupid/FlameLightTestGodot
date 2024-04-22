extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Get the current mouse position from the viewport.
	var mouse_pos = get_viewport().get_mouse_position()
	
	# Set the position of the current node to the mouse position.
	position = mouse_pos
