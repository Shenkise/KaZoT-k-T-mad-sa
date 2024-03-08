extends Area2D

@export var DAMAGE := 10.0
var target : Area2D = null
@onready var timer : Timer = get_node("Timer")

func _on_area_entered(area):
	if area.has_method("damage"):
		var team : bool = area.get_parent().team
		if team != self.get_parent().team:
			target = area
			timer.autostart = true

func _on_timer_timeout():
	if !target:
		timer.autostart = false
		return
		
	var attack : Attack = Attack.new()
	attack.attack_damage = DAMAGE
	target.damage(attack)
