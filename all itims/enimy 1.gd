extends KinematicBody2D

var motion = Vector2()
var speed = 50
var gravity = 10
var dir = -1
var is_moving_lift = true

func _process(delta):
	motion = move_and_slide(motion,Vector2.UP)
	pass
	
func _physics_process(delta):
	motion.x = speed * dir
	$AnimationPlayer.play("move")
	if  is_on_wall():
		dir = dir * -1
	
		
		
		$Sprite.flip_h = ! $Sprite.flip_h
	if is_on_floor() == false:
		motion.y += gravity
		
	

