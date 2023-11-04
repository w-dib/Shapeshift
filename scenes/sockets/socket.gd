extends TextureButton

var tween

@onready var socket_9 = $"../Socket9"
@onready var blue = $"../Socket1/Blue"
@onready var green = $"../Socket2/Green"
@onready var red = $"../Socket3/Red"
@onready var purple = $"../Socket4/Purple"
@onready var pink = $"../Socket5/Pink"
@onready var yellow = $"../Socket6/Yellow"
@onready var box = $"../Socket7/Box"
@onready var all_buttons = [blue, green, red, purple, pink, yellow, box]
@onready var label = $"../../Label"


func _on_pressed():
	if Globals.button_in_center == true and self != socket_9:
		for button in all_buttons:
			if button.global_position == socket_9.global_position + Vector2(5,5):
				Globals.score += 1
				label.text = str(Globals.score)
				var tween = create_tween()
				tween.tween_property(button,"global_position",Vector2(self.global_position + Vector2(5,5)),0.2)
				Globals.button_in_center = false
				print(Globals.score)
