extends CharacterBody2D


const SPEED = 300.0


# Get the gravity from the project settings to be synced with RigidBody nodes.



func _physics_process(delta):

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var Xdirection = Input.get_axis("left", "right")
	if Xdirection:
		velocity.x = Xdirection * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	var Ydirection = Input.get_axis("up", "down")
	if Ydirection:
		velocity.y = Ydirection * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	if position.x < 0:
		position.x = 0
	if position.y < 0:
		position.y = 0
	if position.x > 500:
		position.x = 500
	if position.y > 750:
		position.y = 750

	move_and_slide()
