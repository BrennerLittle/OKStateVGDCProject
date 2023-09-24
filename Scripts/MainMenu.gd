extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_item_clicked(index, at_position, mouse_button_index):
	if(index==0):
		#Sstarts game
		pass
	if(index==1):
		#settings
		pass
	if(index==2):
		#quits game
		get_tree().quit()
	pass # Replace with function body.
