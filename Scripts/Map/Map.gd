extends Node2D

var tile_grid:Array = []
@export var sun:int = 0

@onready var tile:PackedScene = preload("res://Scenes/Map/Tile.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	for x in range(8):
		tile_grid.append([])
		for y in range(5):
			var tile_instance:Area2D = tile.instantiate()
			self.add_child(tile_instance)
			tile_grid[x].append(tile_instance)
			tile_instance.push_tile(x,y)
	print(tile_grid[0][0].get_child_count())
			
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



