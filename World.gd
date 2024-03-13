extends TileMap

const fieldSize = Vector2i(10, 10)
const sourceID = 0
var tileSource = tile_set.get_source(sourceID)
var tileCount = tileSource.get_tiles_count()

func createRandomField():
	print("Creating random field of size: ", fieldSize.x, ", ", fieldSize.y)
	for x in range(fieldSize.x):
		for y in range(fieldSize.y):
			var randomTile = tileSource.get_tile_id(randi() % tileCount)
			var tilePosition = Vector2i(x, y)
			set_cell(0, tilePosition, sourceID, randomTile, 0)
			print("Placed tile at: ", tilePosition, " with tile: ", randomTile)

# Called when the node enters the scene tree for the first time.
func _ready():
	createRandomField()
