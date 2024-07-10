extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(_body: Node2D):
	print("You died!")
	timer.start()

func _on_timer_timeout():
	get_tree().reload_current_scene()