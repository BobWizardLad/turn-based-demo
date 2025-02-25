extends Control

@export var root_layer: HBoxContainer
@export var attack_layer: HBoxContainer

@export var attack_button: Button
@export var defend_button: Button
@export var item_button: Button

@export var basic_attack: Button
@export var special_attack: Button
@export var throw_item: Button

func _ready() -> void:
	attack_layer.hide()
	root_layer.hide()
	reveal_menu() # Play the animation to reveal menu

func reveal_menu() -> void:
	root_layer.show()

func _on_attack_pressed() -> void:
	attack_layer.show()
