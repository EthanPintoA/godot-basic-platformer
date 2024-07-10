extends Node2D

@export var SPEED: float = 60

var direction = 1 # 1 for right, -1 for left

@onready var ray_cast: RayCast2D = $RayCast2D
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta: float) -> void:
    if ray_cast.is_colliding():
        direction *= -1
        ray_cast.target_position.x *= -1
        sprite.flip_h = not sprite.flip_h
        

    position.x += direction * SPEED * delta

func switch_direction() -> void:
    direction *= -1
