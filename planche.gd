extends Node2D

func _ready():
    hide()
    $Timer.start(2)

func _on_timer_timeout():
    visible = true
