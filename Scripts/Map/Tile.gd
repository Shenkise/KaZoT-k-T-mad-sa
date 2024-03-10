extends Area2D

@onready var tile_scale = get_node("Sprite2D").scale
const height:float  = 2320
const width:float = 3088


@onready var tower_instance:PackedScene = preload("res://Scenes/Tower/Tower.tscn")

var tower:Area2D
var is_empty:bool = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	#print(get_parent().sun)
	#push_tile(0.5,0.5) # Replace with function body.

func build_tower():
	tower=tower_instance.instantiate()
	self.add_child(tower)
	is_empty = false

func szam_get() -> int:
	return height

func place_tower():
	pass

func push_tile(x:float, y:float) -> void:
	position.x += x * width * tile_scale.x / 4
	position.y += y * height * tile_scale.y / 4

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta) -> void:
	pass
