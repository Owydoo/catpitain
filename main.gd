extends Node2D

var nbPlanksObtained = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("flotte")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if self.isCatPositionInFront() == true :
		$chat.z_index = $Radeau/Sprite2D_mat.z_index+1
	else :
		$chat.z_index = $Radeau/Sprite2D_mat.z_index-1
		

func isCatPositionInFront():
#	if $chat.position.y > ($Radeau/Sprite2D_mat.position.y+($Radeau/Sprite2D_mat.texture.get_height()/2)):
	if $chat.global_position.y > ($Radeau/matBottom.global_position.y):
#		print("chat :",$chat.global_position.y)
#		print("mat : ",$Radeau/matBottom.global_position.y)
		return true
	else : 
#		print("behind")
		return false	
		
func _on_plank_plank_picked():
	nbPlanksObtained+=1;
	print("catPickedAPlank event : ", nbPlanksObtained)
	pass # Replace with function body.
