extends Node2D

func _is_paused():
	if Input.is_key_pressed("KEY_P"):
		get_tree().paused = true
