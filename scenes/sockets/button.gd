extends TextureButton

var tween
@onready var center_position = $"../../Socket9".global_position + Vector2(5,5)
@onready var blue = $"."
@onready var green = $"../../Socket2/Green"
@onready var red = $"../../Socket3/Red"
@onready var purple = $"../../Socket4/Purple"
@onready var pink = $"../../Socket5/Pink"
@onready var yellow = $"../../Socket6/Yellow"
@onready var box = $"../../Socket7/Box"
@onready var socket_9 = $"../../Socket9"
@onready var all_buttons = [blue, green, red, purple, pink, yellow, box]

func _on_mouse_entered():
	var tween = create_tween()
	tween.parallel().tween_property(self, "pivot_offset", Vector2(40,40), 0.1)
	tween.tween_property(self, "scale", Vector2(1.15,1.15), 0.1)

func _on_mouse_exited():
	var tween = create_tween()
	tween.tween_property(self, "scale", Vector2(1,1), 0.2)

#add globals: score, button_in_center: false to start, and change button_in_center upon exiting and entering

func _on_pressed():
	var tween = create_tween()
	tween.tween_property(self,"global_position",Vector2(center_position),0.2)
