extends Control

func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("pause_menu") 

func pause():
	get_tree().paused = true
	$AnimationPlayer.play("pause_menu") # blur animation, not sure how to rename it!

func testEsc():
	if Input.is_action_just_pressed("Escape") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("Escape") and get_tree().paused == true:
		resume()

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
	print("This button not implemented yet!")
	get_tree().quit()
	pass # Replace with function body.
