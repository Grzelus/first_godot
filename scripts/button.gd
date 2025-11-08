extends Node2D

@onready var sensor = $Area2D
signal pressed

func on_pressed(body: Node):
	if body.name != "player":
		return
	print("button pressed")
	emit_signal("pressed")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	sensor.connect("body_entered", Callable(self, "on_pressed"))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
