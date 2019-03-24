extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

onready var s = preload("res://Menu.tscn")

func _ready():
	set_name("Block")
	print(name)
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _integrate_forces(state):
	if state.get_contact_count() > 0:
		var colliders = get_colliding_bodies()
		#print("Colliders: "+colliders)
		
		for obj in colliders :
			if (obj.name == "Table"):
				#var currentScene = get_tree().get_root().get_child(get_tree().get_root().get_child_count() -1)
				#currentScene.queue_free()
				#var s = get_parent().get_parent().resourceLoader.load("res://Menu.tscn")
				#currentScene = s.instance()
				#get_tree().get_root().add_child(currentScene)
				get_tree().change_scene("res://Menu.tscn")
			#print("Body: "+obj.name)
