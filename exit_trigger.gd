extends Area3D

@export var next_room: String = "res://room_2.tscn"  # Path to next room

func _ready():
	connect("body_entered", _on_body_entered)  # Connect signal in script

func _on_body_entered(body):
	if body is CharacterBody3D:  # Ensure it's the player
		get_tree().change_scene_to_file(next_room)  # Switch scenes
