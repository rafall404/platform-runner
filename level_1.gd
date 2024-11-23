extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.coins = 0
	print("Start of level 1. TOTAL coins: "+ str(Global.coins))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$CanvasLayer/PauseMenu.testEsc()
	pass
