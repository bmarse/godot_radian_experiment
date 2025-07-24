extends Node2D

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var slider: HSlider = $Control/HSlider
@onready var label: Label = $Control/Label
@onready var radian_label: Label = $Control/Radian

func _process(delta: float) -> void:
	var radians := deg_to_rad(slider.value)
	label.text = "Angle: %3.f" % slider.value
	radian_label.text = "Radians: %3.5f" % radians
	
	sprite_2d.flip_h = radians <= PI/2 || radians >= (3*PI)/2
	
