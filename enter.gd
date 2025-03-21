extends Area3D
var count =0
#4
@export var teleport_position: Vector3 = Vector3(30, 0, -72.5) 

func _ready():
	connect("body_entered", _on_body_entered)  # Connect signal in script

func _on_body_entered(body):
	if body is CharacterBody3D:  # Ensure it's the player
		var new_position = body.global_transform.origin
		body.global_transform.origin = teleport_position
		count+=1
		
		
		#$"../Player".new_position.z = teleport_position.
func _process(delta: float) -> void:
	if(count>0):
		$"../ExitTrigger3/ChairMob".visible =true
	if(count>1):
		$"../ExitTrigger3/ChairMob2".visible=true
	if(count>2):
		$"../ExitTrigger3/ChairMob3".visible=true
	if(count>3):
		$"../ExitTrigger3/ChairMob4".visible=true
	if(count>4):
		$"../ExitTrigger3/ChairMob5".visible=true
	if(count>5):
		$"../ExitTrigger3/ChairMob6".visible=true
