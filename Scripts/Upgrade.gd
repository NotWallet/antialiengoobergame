extends Node2D

func _on_bullet_damage_pressed():
	print("damage") # Replace with function body.
	$"../bullet".damage *= 1.5
	visible = false

func _on_bullet_speed_pressed():
	print("bspeed") # Replace with function body.
	$"../bullet".speed *= 2
	visible = false

func _on_player_speed_pressed():
	print("pspeed") # Replace with function body.
	$"../player".speed *= 2
	visible = false
