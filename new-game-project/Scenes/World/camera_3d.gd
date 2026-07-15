extends Camera3D

@export var move_speed := 20.0

func _process(delta):
	var direction = Vector3.ZERO

	if Input.is_action_pressed("ui_up"):
		direction.z -= 1

	if Input.is_action_pressed("ui_down"):
		direction.z += 1

	if Input.is_action_pressed("ui_left"):
		direction.x -= 1

	if Input.is_action_pressed("ui_right"):
		direction.x += 1

	position += direction * move_speed * delta
