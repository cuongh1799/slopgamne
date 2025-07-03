extends Node2D

var speed = 100 # This number controls how fast the shape moves

func _process(delta): # This part of the code runs many times per second
	position.x += speed * delta # This makes the shape move to the right

	# If the shape goes too far off the right side of the screen, move it back to the left
	if position.x > get_viewport_rect().size.x + 50:
		position.x = -50
