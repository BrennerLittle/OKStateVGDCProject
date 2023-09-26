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
		get_tree().change_scene_to_file("res://Scenes/MapOne.tscn")
		pass
	if(index==1):
		#settings
		pass
	if(index==2):
		#credits
		get_tree().change_scene_to_file("res://Scenes/Credits.tscn")
		pass
	if(index==4):
		#quits game
		get_tree().quit()
	pass # Replace with function body.
