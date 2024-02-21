extends Node

const SAVE_PATH = "res://Global/"

func Save_game():
	var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	var data: Dictionary = {
		#
	}
	
	var jstr = JSON.stringify(data)
	file.store_line(jstr)
	debug_log("Save succsesful")
	

func Load_game():
	var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
	
	if FileAccess.file_exists(SAVE_PATH) == true:
		if not file.eof_reached():
			var curren_line = JSON.parse_string(file.get_line())
			if curren_line:
				################
				# Betoltesi adatok helye
				################
				pass
	else:
		#Loggerrel helyettesiteni kesobb!
		debug_log("NO EXISTING SAVE FILE")
		
	file.close()
