extends MeshInstance3D
var tr = false
var rotation_vector_y = Vector3(0, 1, 0)


func _ready() -> void:
	pass # Replace with function body.



func _process(delta: float) -> void:
	if(tr==true):
		$".".position.y+=.02
func _on_timer_timeout():
	if(tr==false):
		$"../Player".rotation += rotation_vector_y * 9.5
		tr=true
