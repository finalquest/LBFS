extends Node2D
@onready var map: TileMap = $"../Map"
@onready var timer: Timer = $Timer

var is_moving = false;


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	# current tile position
	if !timer.is_stopped():
		return
	var tile_pos = map.local_to_map(global_position)
	var direction: Vector2i = Vector2.ZERO
	if Input.is_action_pressed("down"):
		rotation = deg_to_rad(180)
		direction = Vector2.DOWN
	elif Input.is_action_pressed("up"):
		rotation = deg_to_rad(0)
		direction = Vector2.UP
	elif Input.is_action_pressed("left"):
		rotation = deg_to_rad(270)
		direction = Vector2.LEFT
	elif Input.is_action_pressed("right"):
		rotation = deg_to_rad(90)
		direction = Vector2.RIGHT

	var target_pos = tile_pos + direction
	timer.start();
	global_position = map.map_to_local(target_pos)
