extends CharacterBody2D

@export var speed = 300

func _physics_process(delta):

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var Xdirection = Input.get_axis("left", "right")
	if Xdirection:
		velocity.x = Xdirection * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		
	var Ydirection = Input.get_axis("up", "down")
	if Ydirection:
		velocity.y = Ydirection * speed
	else:
		velocity.y = move_toward(velocity.y, 0, speed)
	
	if position.x < 0:
		position.x = 0
	if position.y < 0:
		position.y = 0
	if position.x > 500:
		position.x = 500
	if position.y > 750:
		position.y = 750

	move_and_slide()
