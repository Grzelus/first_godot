extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name != "player":
		return
	print("You died")
	await get_tree().create_timer(0.6).timeout
	get_tree().reload_current_scene()
	
