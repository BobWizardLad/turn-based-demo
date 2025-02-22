extends PointLight2D

var default_scale: float
## The last scale of this light; helps determine next scale
var last_size: float
## Maximum amount of variance in the light flicker scale
@export var light_range: float = 0.4

signal flicker_finished

func _ready():
	default_scale = texture_scale
	last_size = default_scale
	tween_light_flicker()

func tween_light_flicker():
	var tween = get_tree().create_tween()
	var scale_target = randf_range(default_scale - light_range, default_scale + light_range)
	print(scale_target)
	tween.tween_property(self, "texture_scale", scale_target, 0.2)

func _on_flicker_finished() -> void:
	tween_light_flicker()
