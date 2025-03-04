extends CharacterBody3D
const SPEED = 10.0
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y -= gravity * delta
