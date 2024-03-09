extends Node2D

@onready var bullet = preload("res://Scenes/bullet.tscn")
@onready var bullet_script = preload("res://Scripts/RigidBody2D.gd")

@onready var enemy = preload("res://Scenes/enemy.tscn")
@onready var enemy_script = preload("res://Scripts/enemy.gd")

@onready var player = $player

var enemy_pos = [100,200,300,400]
# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(len(enemy_pos)):
		spawn_enemy(Vector2(enemy_pos[i],50))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func spawn_bullet():
	var new_bullet = bullet.instantiate()
	new_bullet.set_position(player.position)
	#new_bullet.set_script(bullet_script)
	add_child(new_bullet)

func spawn_enemy(pos):
	var new_enemy = enemy.instantiate()
	new_enemy.set_position(pos)
	new_enemy.set_script(enemy_script)
	add_child(new_enemy)
	

func _unhandled_input(event):
	if (event is InputEventMouseButton && event.is_action_pressed("shoot")):
		spawn_bullet()
		#pass
