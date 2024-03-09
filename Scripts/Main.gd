extends Node2D

@onready var bullet = preload("res://Scenes/bullet.tscn")
@onready var bullet_script = preload("res://Scripts/Bullet.gd")

@onready var enemy = preload("res://Scenes/enemy.tscn")
@onready var enemy_script = preload("res://Scripts/enemy.gd")

@onready var player = $player

var enemies = 9

var enemy_posX = [50,100,150,200,250,300,350,400,450]
var enemy_posY = [50,100,50,100,50,100,50,100,50]
# Called when the node enters the scene tree for the first time.
func _ready():
	
	for i in range(len(enemy_posX)):
		spawn_enemy(Vector2(enemy_posX[i],enemy_posY[i]))


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
