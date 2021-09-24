extends Node2D

var direction=Vector2.ZERO

func _ready():
	direction=Vector2(500,500)
	
func _physics_process(delta):
	var collision=$Ball.move_and_collide(direction*delta)
	if collision:
		var reflect = collision.remainder.bounce(collision.normal)
		direction = direction.bounce(collision.normal)
		$Ball.move_and_collide(reflect)
		if(collision.collider.name=="Brick"):
			collision.collider.hit()

func _on_VisibilityNotifier2D_screen_exited():
	get_tree().reload_current_scene()
