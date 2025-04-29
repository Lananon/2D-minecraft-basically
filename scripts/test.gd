extends Camera2D

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("left"):
		global_position.x -= 10
	if Input.is_action_pressed("right"):
		global_position.x += 10
	if Input.is_action_pressed("up"):
		global_position.y -= 10
	if Input.is_action_pressed("down"):
		global_position.y += 10
