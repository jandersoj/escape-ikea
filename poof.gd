extends Area3D

@export var next_room: String = "res://Backrooms.tscn"
# Called when the node enters the scene tree for the first time.
func _ready():
	body_entered.connect(_on_body_entered)
	
func _on_body_entered(body):
	if body.is_in_group("player"):
		$CollisionShape3D.disabled
		get_tree().change_scene_to_file(next_room)
