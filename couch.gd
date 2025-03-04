extends CharacterBody3D
@onready var player : CharacterBody3D=get_tree().get_first_node_in_group("player")

const SPEED = 10.0
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
const DAMAGE=10
var attack_range = 45
func _ready() -> void:
	add_to_group("enemy")
func _physics_process(delta: float) -> void:
	
	if player==null:
		return
	var dir=player.global_position-global_position
	dir.y=0.0
	dir=dir.normalized()
	var dist_to_player=global_position.distance_to(player.global_position)
	if not is_on_floor():
		velocity.y -= gravity * delta
	if dist_to_player>attack_range:
		return
	velocity=dir*SPEED
	if not is_on_floor():
		velocity.y-=gravity*delta
	look_at(player.global_position)
	move_and_slide()
	attack()
func attack():
	var dist_to_player=global_position.distance_to(player.global_position)
	if dist_to_player>attack_range:
		return
	var dir=player.global_position-global_position
	dir.y=0.0
	dir=dir.normalized()
	rotation.y=atan2(dir.x,dir.z)
	
func damage():
	return DAMAGE
