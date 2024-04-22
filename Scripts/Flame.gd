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
		$FlameAnimation.play("Left")
	elif mouse_pos.x < mouse_pos_old.x:
		movement_dir = 'l'
		$FlameAnimation.play("Right")
	else:
		movement_dir = 'm'
		$FlameAnimation.play("Still")

	mouse_pos_old = get_viewport().get_mouse_position()
