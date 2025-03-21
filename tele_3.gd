extends Area3D

var velocity_vector
var rotation_vector_x = Vector3(1, 0, 0)
var rotation_vector_z = Vector3(0, 0, 1)
var rotation_vector_y = Vector3(0, 1, 0)


var speed = 0.2
var current = randi() % 4  

var rotation_speed = 0.075 * (current + 1)
const change = 1000
var ticks = 0
var count =0

@export var teleport_location: Vector3 = Vector3(27, 0, -72.5)
@export var your_teleport_location: Vector3 = Vector3(32, 0, -72.5)
@export var exit_teleport_location: Vector3 = Vector3(0, 0,22.36)
@export var next_room: String ="res://starbies3.tscn"

func _ready():
	body_entered.connect(_on_body_entered)
	
func _on_body_entered(body):
	if body.is_in_group("player"):  
		body.global_transform.origin = teleport_location  
		Counter.check+=1
		#$"../Sarris1".play()
		#print("got here")
		if(Counter.check==1):
			#$"../Backrooms".stop()
		#	$"../Sarris1".playing=true
		#	$"../Sarris1".play()
			#print("entered")
			pass
			#$"../Sarris1".play()
			
			 #welcome
		if(Counter.check==2):
			pass #it has been a long time since i have had guests
		if(Counter.check==3):
			pass #I have been waiting for you for so long now
		if(Counter.check==5):
			pass #you can not escape trust me I have tried
		if(Counter.check==6):
			pass #thank you for realising me, I am sorry for what your future has instore
		if(Counter.check==7):
			pass #FINALLY MY ETERNAL PUNSHIMENT IS OVER I AM FREE HA HAAHA HAHAHAHAAHAHAHAHAHAHAHHAHAAHAHAAHHAHAAHHAHA
			#Counter.check+=1
	
func _process(delta: float) -> void:
	$ChairMob3.rotate(rotation_vector_z, 0.075 * ((randi()%4) + 1) )
	$ChairMob.rotate(rotation_vector_z, 0.075 * ((randi()%4) + 1) )
	$ChairMob2.rotate(rotation_vector_z, 0.075 * ((randi()%4) + 1) )
	$ChairMob4.rotate(rotation_vector_z, 0.075 * ((randi()%4) + 1) )
	$"../ChairMob5".rotation += rotation_vector_z * .06
	#$"../ChairMob5".rotation += rotation_vector_x * .1
	#$"../ChairMob5".rotation += rotation_vector_y * .04
	#if(count>3):
	if(Counter.check>3):
		$ChairMob3.rotate(rotation_vector_y, 0.075 * ((randi()%4) + 1) )
		$ChairMob.rotate(rotation_vector_y, 0.075 * ((randi()%4) + 1) )
		$ChairMob2.rotate(rotation_vector_y, 0.075 * ((randi()%4) + 1) )
		$ChairMob4.rotate(rotation_vector_y, 0.075 * ((randi()%4) + 1) )
		$ChairMob3.rotate(rotation_vector_x, 0.075 * ((randi()%4) + 1) )
		$ChairMob.rotate(rotation_vector_x, 0.075 * ((randi()%4) + 1) )
		$ChairMob2.rotate(rotation_vector_x, 0.075 * ((randi()%4) + 1) )
		$ChairMob4.rotate(rotation_vector_x, 0.075 * ((randi()%4) + 1) )
		
		
	if(Counter.check>4&&$"../???".position.y<20):
			$"../???".rotate(rotation_vector_y, 0.075 * ((randi()%4) + 1))
	if(Counter.check>5):
		$"../???".position += rotation_vector_y * .07 
		#$"../???".position += rotation_vector_z * .01
		#$"../???".position += rotation_vector_x * .001
		$"../DirectionalLight3D".rotate(rotation_vector_x, 1 * ((randi()%4) + 1))
#		14 SECONDS total 10 seconds spin
	if($"../???".position.y>20):
		#$"../???".position += rotation_vector_x * .21
		#$"../???".position += rotation_vector_z * .21
		$"../???".rotation += rotation_vector_z * .22
		$"../???".rotation += rotation_vector_x * .4
		$"../???".rotation += rotation_vector_y * .16
		#$"../???".scale += rotation_vector_z * .21
		#$"../???".scale += rotation_vector_x * .21
		#$"../???".scale += rotation_vector_y * .21
		
		if($"../???".position.y>25):
			$"../???".visible=false
			$"../ChairMob5".visible=true
		if($"../???".position.y>30&&$"../???".position.y<50):
			$"../Player".global_transform.origin = your_teleport_location 
		if($"../???".position.y>50&&$"../???".position.y<55):
			$"../DirectionalLight3D".rotation += rotation_vector_y * 20000
			#$"../Player".position.y +=2
			#$"../Player".rotation += rotation_vector_z * 90
			#$"../Player".rotation += rotation_vector_x * 90
			$"../Player".rotation += rotation_vector_y * 90000
		if($"../???".position.y>55):
			get_tree().change_scene_to_file(next_room)
			#$"../Player".rotation.x =1
			#$"../Player".rotation.z =1
			#$"../Player".rotation.y =-17
