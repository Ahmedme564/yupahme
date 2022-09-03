extends Node2D

var destination

func _ready() -> void:
	destination = get_node("PortalDestination").get_global_position()
	
	

func _on_Area2D_body_entered(body: Node) -> void:
	if body.is_in_group("Player"):
		body.set_position(destination)

