extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var grabbed = false
var start = Vector2(0,0)
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
		if (start.distance_to(position) > 50):
			scale = Vector2(1,1)
		else:
			scale = Vector2(0.5,0.5)
		var mpos = get_viewport().get_mouse_position()
		position = mpos+offset
		
		
#	pass
