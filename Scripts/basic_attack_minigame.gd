extends Node2D

## Area2D Object associated with the player cursor - The box the player needs to line up!
@export var pointer_area: Area2D
## Area2D Object that the player needs to land the pointer in!
@export var success_area: Area2D

func _ready():
	pass

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		if pointer_area.has_overlapping_areas() && pointer_area.get_overlapping_areas()[0] == success_area:
			print("WINNER IS YOU")
