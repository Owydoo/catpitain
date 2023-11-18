extends Area2D

var objectPickable = false;
var buttonPressed = false;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (objectPickable && Input.is_key_pressed(KEY_ENTER) && !buttonPressed):
		buttonPressed = true;
		print("pick plank")
		#ajout de la planche dans ... quelque part ?
		
		#faire disparaître la planche
		queue_free();
	pass
	

func _on_picking_area_2d_area_entered(area):
	$plankSprite.modulate = Color(0,1,0);
	objectPickable = true;


func _on_picking_area_2d_area_exited(area):
	$plankSprite.modulate = Color(1,1,1);
	objectPickable = false;
	buttonPressed = false;
