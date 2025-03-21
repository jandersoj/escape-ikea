extends Node3D
func _process(delta: float) -> void:
	if $AmbientBackground.playing==false:
		$AmbientBackground.play()
func _ready() -> void:
	Counter.current_room= "res://room_4.tscn"
