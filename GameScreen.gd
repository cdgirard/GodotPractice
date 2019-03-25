extends Node2D

onready var Table = preload("res://Table.tscn")
onready var Block = preload("res://DropBlock.tscn")
onready var Drag = preload("res://DragBlock.tscn")
onready var Trigger = preload("res://TriggerBlock.tscn")

var drag

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var trigger = Trigger.instance()
	drag = Drag.instance()
	drag.hide()
	var table = Table.instance()
	#add_child(block)
	trigger.position = Vector2(100,100)
	add_child(trigger)
	add_child(table)
	add_child(drag)
	var data = get_children()
	for obj in data :
		print(obj.get_name())

func grabbed_block(gpos,offset):
	drag.position = gpos
	drag.offset = offset
	drag.scale = Vector2(0.5,0.5)
	drag.start = Vector2(gpos.x,gpos.y)
	drag.grabbed = true
	drag.show()

func released_block(pos):
	var block = Block.instance()
	#block.position = Vector2(-100,-100)
	block.position = pos
	add_child(block)
	drag.hide()
	print("Do block release")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
