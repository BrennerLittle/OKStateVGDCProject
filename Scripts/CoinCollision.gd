extends Node
signal pickup

# Called when the node enters the scene tree for the first time.
func _ready():
	pickup.emit()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass


func _on_area_2d_mouse_entered():
	pickup.emit()
	
	pass # Replace with function body.


