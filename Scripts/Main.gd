extends Node2D

@onready var bullet = preload("res://Scenes/bullet.tscn")
@onready var bullet_script = preload("res://Scripts/RigidBody2D.gd")

@onready var player = $player
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func spawn_bullet():
	var new_bullet = bullet.instantiate()
	new_bullet.set_position(player.position)
	#new_bullet.set_script(bullet_script)
	add_child(new_bullet)

func _unhandled_input(event):
	if (event is InputEventMouseButton && event.is_action_pressed("shoot")):
		spawn_bullet()
		#pass
