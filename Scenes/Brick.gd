extends StaticBody2D

func hit():
	get_parent().queue_free()
	
