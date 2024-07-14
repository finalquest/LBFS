extends Sprite2D

@export var map: TileMap

# Called when the node enters the scene tree for the first time.
func _ready():
	var tile_pos = map.local_to_map(global_position)
	map.set_walkable(tile_pos, false)
	print("Init Tool", tile_pos)
	global_position = map.map_to_local(tile_pos)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass