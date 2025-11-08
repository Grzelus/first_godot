extends Node2D

@onready var coll = $StaticBody2D/CollisionShape2D
@onready var sprite = $StaticBody2D/Sprite2D
@onready var texture = sprite.texture

func open_door():
	coll.set_deferred("disabled", true)
	sprite.set_deferred("texture", null)
	await get_tree().create_timer(3).timeout
	close_door()
	
func  close_door():
	print("door is closed")
	coll.set_deferred("disabled", false)
	sprite.set_deferred("texture", texture)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
