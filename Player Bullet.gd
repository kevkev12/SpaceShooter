extends Area2D

var vel = Vector2()
export var speed = 1000

#func _ready():
#	_fixed_process(true)

func start_at(direction, position):
	set_rotation(direction)
	set_position(position)
	vel = Vector2(speed, 0).rotated(direction)

func _fixed_process(delta):
	set_position(get_position() + vel * delta)