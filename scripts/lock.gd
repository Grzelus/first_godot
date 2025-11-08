extends Node

@onready var door = $Door
@onready var btn = $Button
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	btn.connect("pressed", Callable(door, "open_door"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
