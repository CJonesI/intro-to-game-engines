extends Node2D

const SPEED = 30

var direction = 1

func _on_hit_area_body_entered(body: Node2D):
	if body.name =="Player":
		body.get_node("CollisionShape2D").queue_free()
		queue_free()
		
