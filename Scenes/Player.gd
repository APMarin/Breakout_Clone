extends Node2D


func moveTo(pos):
	$Player.global_position.x=pos.x;
	
func dragTo(pos):
	$Player.global_position=pos
