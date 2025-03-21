extends Node3D
func _process(delta: float) -> void:
	if $Starbies.playing==false:
		$Starbies.play()
func _ready() -> void:
	Counter.current_room= "res://starbies.tscn"
