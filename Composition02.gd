extends Spatial

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("fullscreen"):
		OS.window_borderless = !OS.window_borderless
		OS.window_fullscreen = !OS.window_fullscreen
