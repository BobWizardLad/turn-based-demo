extends Node2D

## Area2D Object associated with the player cursor - The box the player needs to line up!
@export var pointer_area: Area2D
## Area2D Object that the player needs to land the pointer in!
@export var success_area: Area2D
## SFX Player for this minigame, and relevant SFX
@export var audio_stream: AudioStreamPlayer
@export var whiff: AudioStream
@export var hit: AudioStream
## Animation Player
@export var anim_player: AnimationPlayer

func _ready():
	pass

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		# Remember the position at input, and return the pointer to that position,
		# the animation player pause call takes too long to freeze the pointer.
		var memory = pointer_area.position
		anim_player.pause()
		pointer_area.position = memory
		if pointer_area.has_overlapping_areas() && pointer_area.get_overlapping_areas()[0] == success_area:
			audio_stream.stream = hit
			audio_stream.play()
			print("WINNER IS YOU!")
		else:
			audio_stream.stream = whiff
			audio_stream.play()
			print("WHIFF!")
