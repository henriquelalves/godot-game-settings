@tool
extends ggsSetting

@export_category("Fullscreen Mode")
@export var current: bool: set = set_current
@export var default: bool = false


func _init() -> void:
	super()
	
	name = "Fullscreen Mode"
	icon = preload("res://addons/ggs/assets/game_settings/display_fullscreen.svg")
	desc = "Toggle Fullscreen mode."


func set_current(value: bool) -> void:
	current = value
	update_save_file(value)


func apply(_value: bool) -> void:
	pass