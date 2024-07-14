extends Area2D

@onready var game_manager := %GameManager

func _on_body_entered(_body: Node2D):
	print("Coin collected")
	game_manager.increment_score()
	self.queue_free()
