extends Node

func _ready():
	get_tree().change_scene("res://GameScreen.tscn")
	
func _process(delta):
	if Input.is_key_pressed(KEY_LEFT):
		self.position.x -= 1
	if Input.is_key_pressed(KEY_RIGHT):
		self.position.x += 1
