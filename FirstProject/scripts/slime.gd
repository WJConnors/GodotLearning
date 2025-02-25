extends Node2D

const SPEED = 30

@onready var ray_cast_2d: RayCast2D = $RayCast2DRight
@onready var ray_cast_2d_2: RayCast2D = $RayCast2DLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var dir = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_2d.is_colliding():
		dir = -1
		animated_sprite_2d.flip_h = true
	if ray_cast_2d_2.is_colliding():
		dir = 1
		animated_sprite_2d.flip_h = false
	
	position.x += dir * SPEED * delta
