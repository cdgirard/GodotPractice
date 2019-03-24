extends Node2D

var grabbed = false
var offset = Vector2(0,0)
var gpos
var spriterect

# Called when the node enters the scene tree for the first time.
func _ready():
	set_dragbox()

func set_dragbox():
	var mySprite
	var mySpriteSize
	mySprite = get_children()[0]
	gpos=mySprite.global_position
	mySpriteSize = Vector2(mySprite.texture.get_width(), mySprite.texture.get_width())
	if mySprite.centered:
		spriterect=Rect2(gpos.x-mySpriteSize.x/2, gpos.y-mySpriteSize.y/2, mySpriteSize.x, mySpriteSize.y)
	else:
		spriterect=Rect2(gpos.x, gpos.y, mySpriteSize.x, mySpriteSize.y)

func set_position(pos):
	position = pos
	set_dragbox()

func _input(event):
	#for obj in data :
	#	print(obj.get_name())
	
	if (event is InputEventMouseButton):
		if (event.is_pressed() and !grabbed):
			if (event.get_button_index() == BUTTON_LEFT):
				var evpos=event.global_position
				set_dragbox()
				if spriterect.has_point(evpos):
					grabbed = true
					offset=gpos-evpos
					get_parent().grabbed_block(gpos,offset)
		else:
			if (grabbed):
				grabbed=false
				#var mpos = get_viewport().get_mouse_position()
				#get_parent().released_block(mpos+offset)
				print("trigger release")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
