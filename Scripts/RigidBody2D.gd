extends Area2D

@onready var player = $player
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y -= 10
	
#func _unhandled_input(event):
	#if (event is InputEventMouseButton && event.is_action_pressed("shoot")):
		#linear_velocity.y = -500


func _on_body_entered(body):
	queue_free()
	if body.has_method("die"):
		body.die()
