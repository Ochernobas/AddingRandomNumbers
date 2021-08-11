extends Control

export var timer : int = 0.1 #Here you type how many times per second a point will be added to a bar(Ex. 0.1 means in
#                             0.1 second, a point is going to be added

func _ready():
	Global.start()
	$Timer.start(timer)

func _on_Timer_timeout():
	Global.timer_end()

func timer_stop():
	$Timer.stop()
