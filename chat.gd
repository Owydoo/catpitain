extends Node2D

@export var speed = 200 # Vitesse de déplacement (px/s)
var raft_size # Taille de la fenêtre

# Called when the node enters the scene tree for the first time.
func _ready():
	#raft_size = get_canvas_item()
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO
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
		
	position += velocity * delta
	#position = position.clamp(Vector2.ZERO, raft_size)
