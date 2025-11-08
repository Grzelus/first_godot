extends CharacterBody2D

@onready var sprite = get_node_or_null("AnimatedSprite2D")

const SPEED = 170.0
const JUMP_VELOCITY = -400.0

var was_flipped_left = false
#jump_counter
var jump_counter = 0

func _ready() -> void:
	add_to_group("player")
	

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept"):
		if jump_counter < 2 :
			velocity.y = JUMP_VELOCITY
			jump_counter +=1

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
		
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED/10)

	move_and_slide()
	
	if is_on_floor():
		jump_counter = 0

	if direction != 0:
		was_flipped_left = direction < 0
		sprite.flip_h = was_flipped_left
	else:
		sprite.flip_h = was_flipped_left
