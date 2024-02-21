extends Area2D

@export var DAMAGE := 10.0


func _on_area_entered(area):
	if area.has_method("damage"):
		var team = area.get_parent().team
		if team != self.get_parent().team:
			var attack = Attack.new()
			attack.attack_damage = DAMAGE
