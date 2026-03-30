extends Node2D

@onready var door = $Door
func _on_door_area_body_entered(body):
	if body.name == "CharacterBody2D":
		door._hide()

func _on_door_area_body_exited(body):
	if body.name == "CharacterBody2D":
		door._show()
func _on_open_door_button_pressed():
	door._hide()

func _on_close_door_button_pressed():
	door._show()
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _show():
	self.visible = true

func _hide():
	self.visible = false
