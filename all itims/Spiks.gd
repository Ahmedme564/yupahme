extends Area2D



func _on_Spiks_body_entered(body):
	if body.is_in_group("Player"):
		get_tree().reload_current_scene()
	
	pass # Replace with function body.
