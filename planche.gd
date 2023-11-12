extends Node2D

func _ready():
    $Timer.start(2)

func _on_timer_timeout():
    print("Salut les copains!")
    visible = true
