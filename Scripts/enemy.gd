extends CharacterBody2D

var health = 50

func _ready():
	pass

func _physics_process(delta):
	position.y += .25
	
func die():
	health-=25
	
	if health <= 0:
		queue_free()

