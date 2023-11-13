extends CharacterBody2D

@export var speed = 100 # Vitesse de déplacement (px/s)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		velocity.x +=1
	if Input.is_action_pressed("move_left"):
		velocity.x -=1
	if Input.is_action_pressed("move_down"):
		velocity.y +=1
	if Input.is_action_pressed("move_up"):
		velocity.y -=1
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		
	move_and_slide()
