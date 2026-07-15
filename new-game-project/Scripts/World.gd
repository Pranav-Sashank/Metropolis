extends Node3D

@onready var HOUSE = load("res://Buildings/House.tscn")

func _unhandled_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			place_house()

func place_house():
	var house = HOUSE.instantiate()
	add_child(house)
	house.position = Vector3(0, 1.5, 0)
	
