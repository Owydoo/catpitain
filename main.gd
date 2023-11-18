extends Node2D

@export var planche_scene = PackedScene.new()
    
# Called when the node enters the scene tree for the first time.
func _ready():
    $AnimationPlayer.play("flotte_radeau")
    $Timer.start(1)
    
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
    if self.isCatPositionInFront() == true :
        $Node2D/chat.z_index = $Node2D/Radeau/Sprite2D_mat.z_index+1
    else :
        $Node2D/chat.z_index = $Node2D/Radeau/Sprite2D_mat.z_index-1
        

func isCatPositionInFront():
    if ($Node2D/chat.global_position.y+50) > ($Node2D/Radeau/matBottom.global_position.y):
        return true
    else : 
        return false	

func _on_timer_timeout():
#    var planche_instance = planche_scene.instantiate()
#    add_child(planche_instance)
    var planche_instance = planche_scene.instantiate()

    # Obtenez la taille de la fenêtre du jeu
    var window_size = get_viewport_rect().size
    
    # Positionnez l'instance de planche à une position aléatoire
    planche_instance.position.x = randf_range(-(window_size.x/2), window_size.x/2)
    planche_instance.position.y = randf_range(-(window_size.y/2), window_size.y/2)

    add_child(planche_instance)
    
