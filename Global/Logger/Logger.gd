extends Node


@export var logging: bool = false

func _is_logging(current: Node) -> bool:
	if current.name == "main":
		return true

	if !current.logging:
		return false

	return _is_logging(current.get_parent())

func debug_log(message: String) -> void:
	if _is_logging(self):
		print_debug(message)
