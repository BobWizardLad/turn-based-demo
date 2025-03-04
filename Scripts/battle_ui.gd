extends Control
@export var animation_player: AnimationPlayer

@export var root_layer: HBoxContainer
@export var attack_layer: HBoxContainer

@export var attack_button: Button
@export var defend_button: Button
@export var item_button: Button

@export var basic_attack: Button
@export var special_attack: Button
@export var throw_item: Button

func _ready() -> void:
	reveal_menu() # Play the animation to reveal menu

## Calls the animation to reveal the attack menu, will call other 
## functions important to the menu boot.
func reveal_menu() -> void:
	attack_layer.hide()
	root_layer.hide()
	root_layer.show() # reveal menu anim call sometime =)
	animation_player.play("fade_in")

func _on_attack_pressed() -> void:
	attack_layer.show()

## Launch the attack minigame
func _on_basic_attack_pressed() -> void:
	pass # Replace with function body.
