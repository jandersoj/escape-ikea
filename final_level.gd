extends Node3D
func _process(delta: float) -> void:
	if $AmbientBackground.playing==false:
		$AmbientBackground.play()
	if $"HelicopterSoundEffect-Flying5Minutes".playing==false:
		$"HelicopterSoundEffect-Flying5Minutes".play()
func _ready() -> void:
	Counter.current_room= "res://final_level.tscn"
