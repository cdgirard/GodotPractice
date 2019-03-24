extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var grabbed = false
var offset = Vector2(0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	

func _input(event):
	#for obj in data :
	#	print(obj.get_name())
	
	if (event is InputEventMouseButton):
		if (!event.is_pressed()):
			if (grabbed):
				grabbed=false
				var mpos = get_viewport().get_mouse_position()
				get_parent().released_block(mpos+offset)
				print("drag release")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (grabbed):
		var mpos = get_viewport().get_mouse_position()
		position = mpos+offset
#	pass
