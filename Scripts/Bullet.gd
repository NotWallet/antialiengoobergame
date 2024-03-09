extends Area2D

@export var speed = 10
@export var damage = 50

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y -= speed
	
	if position.y < -700:
		queue_free()
	
func _on_body_entered(body):
	queue_free()
	if body.has_method("die"):
		body.die(damage)
