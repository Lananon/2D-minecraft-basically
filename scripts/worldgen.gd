extends Node2D

@onready var tilemap = get_node("TileMapLayer")

var noise = FastNoiseLite.new()

const noise_zoom = Vector2(0.5, 0.1)

const noise_mult = 1.5

const offset = Vector2(0, -120)

var seed = randi()


func _ready() -> void:
	noise.noise_type = FastNoiseLite.TYPE_PERLIN
	noise.seed = seed
	
	
	
	for x in 200:
		var ground = abs(noise.get_noise_1d(x * noise_zoom.x + offset.x) * noise_mult)
		for y in 200:
			var noise_map = noise.get_noise_2d(x * noise_zoom.x + offset.x, y * noise_zoom.y + offset.y) * noise_mult
			if ground* 100 < y + offset.y:
				tilemap.set_cell(Vector2i(x, y), 0, Vector2i(1, 0))
