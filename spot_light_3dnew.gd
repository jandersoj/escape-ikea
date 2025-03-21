extends SpotLight3D
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	self.visible=true
