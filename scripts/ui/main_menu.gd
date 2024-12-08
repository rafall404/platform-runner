extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level_1.tscn")


func _on_choose_level_pressed() -> void:
	# TODO: implement
	pass # Replace with function body.


func _on_exit_game_pressed() -> void:
	get_tree().quit()
