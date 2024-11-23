extends Sprite3D

var coins = 5
var player_name = "robot"
var harts = 3.5
const SPEED = 2
var x = coins / SPEED
var is_godot_awesome = true
var key_collected = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	minion()
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#print(deg_to_rad(SPEED))
	check_inputs()
	#pass

func minion():
	print("BANANA!")

func add_those_numbers(x, y):
	var sum = x + y
	return sum

func check_inputs():
	if Input.is_action_pressed("ui_left"):
		rotate_y(deg_to_rad(-SPEED))
	elif Input.is_action_pressed("ui_right"):
		rotate_y(deg_to_rad(SPEED))

#func _on_area_body_entered(body):
	##Start spinning when another object enters
	#is_spinning = true
#
#func _on_area_body_exited(body) -> void:
	#is_spinnning = false
