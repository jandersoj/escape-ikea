extends MeshInstance3D

var player
var velocity_vector
var rotation_vector_x = Vector3(1, 0, 0)
var rotation_vector_z= Vector3(0, 0, 1)
var rotation_vector_y= Vector3(0, 1, 0)

var rotation_speed = 0.075


func _ready():
	rotation_speed*=-1
	#$Timer.start()

func _on_timer_timeout():
	rotate(rotation_vector_z, -rotation_speed)
	rotation_speed*=-1
	
