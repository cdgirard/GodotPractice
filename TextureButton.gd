extends TextureButton

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var s = preload("res://Table.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _pressed():
	get_tree().change_scene("res://GameScreen.tscn")
