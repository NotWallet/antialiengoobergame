extends CharacterBody2D

var health = 100

@onready var text = $TextEdit

func _ready():
	pass

func _physics_process(delta):

	position.y += .25
	text.text = str(health)
	
func die():
	health-=25
	
	if health <= 0:
		queue_free()

