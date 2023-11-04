extends TextureButton

var tween
@onready var center_position = $"../../Socket9".global_position + Vector2(5,5)
@onready var label = $"../../../Label"


func _on_mouse_entered():
	var tween = create_tween()
	tween.parallel().tween_property(self, "pivot_offset", Vector2(40,40), 0.1)
	tween.tween_property(self, "scale", Vector2(1.15,1.15), 0.1)

func _on_mouse_exited():
	var tween = create_tween()
	tween.tween_property(self, "scale", Vector2(1,1), 0.2)

func _on_pressed():
	if Globals.button_in_center == false:
		Globals.score += 1
		label.text = str(Globals.score)
		var tween = create_tween()
		tween.tween_property(self,"global_position",Vector2(center_position),0.2)
		Globals.button_in_center = true
		print(Globals.score)
	
