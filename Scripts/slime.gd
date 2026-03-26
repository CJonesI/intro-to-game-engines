extends Node2D

const SPEED = 30
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var animated_sprite = $AnimatedSprite2D	
var direction = 1

func _on_hit_area_body_entered(body: Node2D):
	if body.name =="Player":
		queue_free()
		
func _physics_process(delta: float):
	
	#Flip the Sprite
	if direction > 0:
		animated_sprite.flip_h = true
	elif direction < 0:
		animated_sprite.flip_h = false
		
	position.x += direction * SPEED * delta
	
