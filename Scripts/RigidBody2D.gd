extends RigidBody2D

@onready var player = $player
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _unhandled_input(event):
	if (event is InputEventMouseButton && event.is_action_pressed("shoot")):
		linear_velocity.y = -500