extends CharacterBody3D
const SPEED = 10.0
#var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
var gravity: float = 40.0
func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y -= gravity * delta
		#move_and_collide(velocity)
		print("got here")
	#if global_position.y !=0:
	#	velocity.y -= gravity * delta
		#move_and_collide(velocity)
	#	print("got here")
	#move_and_slide()


var player
var velocity_vector
var rotation_vector_x = Vector3(1, 0, 0)
var rotation_vector_z= Vector3(0, 0, 1)
var rotation_vector_y= Vector3(0, 1, 0)

var speed = 0.2
var current = randi() % 4
var rotation_speed = 0.075*current
const change = 1000
var ticks = 0
#var current = randi() % 4
#var curren = randi() % 2

func _process(delta: float) -> void:
	
	
	#global_position += velocity_v  ector*delta
	#rotate(rotation_vector_x, rotation_speed)
	#rotate(rotation_vector_y, rotation_speed)
	rotate(rotation_vector_z, rotation_speed)
	
