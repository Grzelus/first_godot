extends Node

@onready var coins = self.get_children()

	
var counter = 0

func on_collect():
	counter += 1
	print(counter)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
		for coin in coins:
			coin.connect("collect", Callable(self, "on_collect"))
 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
