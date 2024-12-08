extends Control

func resume():
	print("in resume")
	get_tree().paused = false
	$AnimationPlayer.play_backwards("pause_menu") 

func pause():
	get_tree().paused = true
	$AnimationPlayer.play("pause_menu") # blur animation, not sure how to rename it!

func _input(event):
	# If the game is paused, we prevent all inputs except Escape
	if event.is_action_released("Escape"):
		if get_tree().paused:
			print("out esc")
			resume()
		else:
			print("in esc")
			pause()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("RESET")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_resume_pressed() -> void:
	resume()


func _on_restart_pressed() -> void:
	resume()
	get_tree().reload_current_scene()


func _on_main_menu_pressed() -> void:
	resume()
	get_tree().change_scene_to_file("res://scenes/ui/main_menu.tscn")
