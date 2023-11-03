extends CharacterBody2D


const SPEED = 500.0
const JUMP_VELOCITY = -1200.0
var coins = 0 

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	pass

func _physics_process(delta):
	
	#if Input.is_action_just_pressed("ui_right"):
	#	position.x+=SPEED
	#if Input.is_action_just_pressed("ui_left"):
	#	position.x-=SPEED
	#if Input.is_action_just_pressed("ui_up"):
	#	position.y+=SPEED
	#if Input.is_action_just_pressed("ui_down"):
	#	position.y-=SPEED
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y += 4*gravity * delta

	# Handle Jump.
	if (Input.is_key_pressed(KEY_SPACE) and is_on_floor()) or (Input.is_key_pressed(KEY_W) and is_on_floor()):
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#var direction = 
	if (Input.is_key_pressed(KEY_A)):
		velocity.x = SPEED * -2
	if (Input.is_key_pressed(KEY_D)):
		velocity.x = SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	

	move_and_slide()


func _on_coin_body_entered(body):
	coins+=1
	get_node("Control/HUD").text = "coins:" +str(coins)
	pass # Replace with function body.
