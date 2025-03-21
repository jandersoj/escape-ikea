extends Sprite2D

func _ready():
	
	var tween = create_tween()
	
	
	var target_position = Vector2(-200, -200)
	
	
	tween.tween_property(self, "position", target_position, 2.0).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	
	tween.tween_property(self, "modulate:a", 0.0, 2.0).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	

	tween.finished.connect(_on_tween_finished)

func _on_tween_finished():
	$"../Label".visible=true
	$"../Label2".visible=true
