extends Spatial

const INTERVAL: float = 120.0
const START_DELAY: float = 30.0
const SPEED: float = 10.0
const DISTANCE: float = 300.0

onready var initial_pos = transform.origin.z

var time: float = 0.0

func _process(delta: float) -> void:
	time += delta
	if time < START_DELAY:
		return
	while time >= START_DELAY + INTERVAL:
		time -= INTERVAL
	var phase = time - START_DELAY
	var pos = phase * SPEED
	if pos > DISTANCE:
		pos = 0.0
	transform.origin.z = initial_pos + pos
