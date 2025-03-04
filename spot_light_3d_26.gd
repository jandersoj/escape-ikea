extends SpotLight3D

func _ready():
	flicker()

func flicker():
	var random_time = randf_range(0.1, 0.5)
	light_energy = randf_range(0.5, 3.0)
	await get_tree().create_timer(random_time).timeout
	flicker()
