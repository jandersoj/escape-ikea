extends MeshInstance3D

var player
var velocity_vector
var rotation_vector_x = Vector3(1, 0, 0)
var rotation_vector_y= Vector3(0, 0, 1)

var speed = 0.5
var rotation_speed = 0.02
const change = 1000
var ticks = 0
var current = randi() % 4


func _process(delta: float) -> void:
	
	
	#global_position += velocity_vector*delta
	#rotate(rotation_vector_x, rotation_speed)
	rotate(rotation_vector_y, rotation_speed)
