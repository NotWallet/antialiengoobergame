extends CharacterBody2D

@export var health = 100

@onready var text = $TextEdit

func _ready():
	pass

func _physics_process(delta):

	position.y += .25
	text.text = str(health)
	
func die(damage):
	health-=damage
	
	if health <= 0:
		$"..".enemies -= 1
		queue_free()

