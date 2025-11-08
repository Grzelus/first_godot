extends Area2D

@onready var sprite = $AnimatedSprite2D
@onready var coll = $CollisionShape2D
signal collect

func on_collect(body: Node):
	if body.name != "player":
		return
	queue_free()
	print("collected!")
	emit_signal("collect")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.connect("body_entered", Callable(self, "on_collect"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
