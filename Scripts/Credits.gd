extends Node

func _loadCredits():
	var file = FileAccess.open("res://MiscFiles/credits.txt", FileAccess.READ)
	var content = file.get_as_text()
	return content
# Called when the node enters the scene tree for the first time.
func _ready():
	$".".set_text(_loadCredits())
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$".".position.y-=2
	if($".".position.y==-1000):
		get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
	pass
	
