extends Area2D

export var rot_speed = 2.6
export var movement = 500
export var max_speed = 400

var screen_size = Vector2()
var pos = Vector2()
var vel = Vector2()
var accl = Vector2()
var rot = 0


func _ready():
	screen_size = get_viewport_rect().size
	pos = screen_size / 2
	set_position(pos)

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
