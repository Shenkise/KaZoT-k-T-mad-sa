extends CharacterBody2D


const team : bool = 0
var move : bool = true
var cooldown : bool = true
@export var MOVE_SPEED := 100.0
@export var ATTACK_SPEED := 2.0

func _physics_process(delta):
		if move:
			velocity.x = -1 * MOVE_SPEED
			move_and_slide()

func _on_attack_hitbox_component_area_entered(area):
	if area.get_parent().team != self.team:
		move = false

func _on_attack_hitbox_component_area_exited(area):
	if area.get_parent().team != self.team:
		move = true
