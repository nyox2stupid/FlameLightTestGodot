extends Node2D

var mouse_pos_old = Vector2.ZERO
var movement_dir = 'm'

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
	var mouse_pos_old = get_viewport().get_mouse_position()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Get the current mouse position from the viewport.
	var mouse_pos = get_viewport().get_mouse_position()
	
	# Set the position of the current node to the mouse position.
	position = mouse_pos


	if mouse_pos.x > mouse_pos_old.x:
		movement_dir = 'r'
		$Left.visible = true
		$Still.visible = false
		$Right.visible = false
		
	elif mouse_pos.x < mouse_pos_old.x:
		movement_dir = 'l'
		$Left.visible = false
		$Still.visible = false
		$Right.visible = true
	else:
		movement_dir = 'm'
		$Left.visible = false
		$Still.visible = true
		$Right.visible = false

	print(movement_dir)
	mouse_pos_old = get_viewport().get_mouse_position()
