extends Spatial

export var rot_scale : float;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate(Vector3(0, 1, 0).normalized(), rot_scale * delta)
