extends KinematicBody2D

var palletSpeed = 600

var motion = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		motion.x = palletSpeed
	elif Input.is_action_pressed("ui_left"):
		motion.x = -palletSpeed
	else:
		motion.x = lerp(motion.x,0,0.2)
	if Input.is_action_just_pressed("ui_up"):
		palletSpeed += 100
	elif Input.is_action_just_pressed("ui_down"):
		palletSpeed-= 100
		
	move_and_slide(motion)
	pass
	
