extends StaticBody2D

var bHP = 75

func hit():
	bHP-= 25
	if bHP == 0:
		$explode.play()
		get_parent().queue_free()
		
