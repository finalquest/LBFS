extends TileMap

var is_walkable: Dictionary = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_walkable(pos: Vector2i, walkable: bool):
	is_walkable[pos] = walkable

func get_walkable(pos: Vector2i):
	return is_walkable.get(pos, true)