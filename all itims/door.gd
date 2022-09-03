extends Area2D



export(String, FILE) var NEXT_LEVEL: String = ""







func _on_door_body_entered(body: Node) -> void:
	if body.is_in_group("Player") and NEXT_LEVEL != "":
		get_tree().change_scene(NEXT_LEVEL)


	
