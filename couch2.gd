extends CharacterBody3D

var player
var velocity_vector
var rotation_vector_x = Vector3(1, 0, 0)
var rotation_vector_z= Vector3(0, 0, 1)
var rotation_vector_y= Vector3(0, 1, 0)

var speed = 0.5
var rotation_speed = 0.075
const change = 1000
var ticks = 0
var current = randi() % 4

func _ready():
	#rotate(rotation_vector_y, rotation_speed)
	#rotation_speed*=-1
	$Timer.start()

func _on_timer_timeout():
	rotate(rotation_vector_y, -rotation_speed)
	rotation_speed*=-1
	
