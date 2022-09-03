extends KinematicBody2D

var motion = Vector2()
var speed = 120
var gravity = 10
export var jump = -150

func _process(delta):
	motion = move_and_slide(motion,Vector2.UP)
	pass

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
		$Sprite.flip_h = false
		if is_on_floor():
			$Sprite.play("move")
			
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
		$Sprite.flip_h = true
		if is_on_floor():
			$Sprite.play("move")
	else:
		motion.x = 0
		if is_on_floor():
			$Sprite.play("idel")
	
	if is_on_floor() == false:
		motion.y += gravity
		
		#if motion.y > gravity:
			#$AnimationPlayer.play("fall")
		#if motion.y > -gravity:
			#$Sprite.play("jump")
		
	if is_on_floor() == true && Input.is_action_pressed("ui_up") == true:
		motion.y = jump
		
	Void()
	
	pass

func Void():
	if global_position.y >= 600:
		get_tree().reload_current_scene()
	pass



func _on_HDbox_body_entered(body):
	if body.is_in_group("Enemy"):
		get_tree().reload_current_scene()
	pass # Replace with function body.



		


