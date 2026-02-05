extends Node2D

const SPEED = 30

var direction = 1
@onready var ray_cast_left = $Left
@onready var ray_cast_right = $right

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = 2
	if ray_cast_left.is_colliding():
		direction = -2
	
		
	position.x += direction * SPEED * delta

func _on_hit_area_body_entered(body: Node2D):
	if body.name =="Player":
		body.get_node("CollisionShape2D").queue_free()
		queue_free()
		
