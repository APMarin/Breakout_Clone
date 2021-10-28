extends Node2D

onready var br=preload("res://Scenes/Brick.tscn")
onready var br2=preload("res://Scenes/Brick2.tscn")

func _ready():
	set_bricks()

func set_bricks():
	var numbr=0
	for i in range(2):
		for j in range(13):
				var brick=br.instance()
				var brick2=br2.instance()
				brick2.position=Vector2(100+70*(j),50+40*i)
				brick.position=Vector2(100+70*(j),130+40*i)
				numbr+=1
				add_child(brick)
				add_child(brick2)

func fPause():
	if Input.is_action_just_pressed("ui_select"):
		get_tree().paused = true
	else:
		get_tree().paused = false
