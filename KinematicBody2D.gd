extends KinematicBody2D

export var rot_speed = 2.2
export var horsepower = 150
export var max_vel = 120
export var friction = 0.98

var screen_size = Vector2()
var rot = 0
var pos = Vector2()
var vel = Vector2()
var accl = Vector2()

func _ready():
	screen_size = get_viewport_rect().size
	pos = screen_size / 2
	set_position(pos)
	set_process(true)

func _process(delta):
	if Input.is_action_pressed("move_left"):
		rot -= rot_speed * delta
	if Input.is_action_pressed("move_right"):
		rot += rot_speed * delta
	if Input.is_action_pressed("move_forward"):
		accl = Vector2( horsepower, 0 ).rotated(rot)
	else:
		accl = Vector2( 0, 0 )
		
	accl += vel * -friction
	vel += accl * delta
	pos += vel * delta
	
	set_rotation(rot + PI/2)

	set_position(pos)
