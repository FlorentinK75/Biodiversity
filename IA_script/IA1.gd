extends Node2D

#member variable 
@onready var mobile :PathFollow2D = get_parent()
var speed :float = 120.0

var maxProgress = 1170
var minProgress = 10

func _borders():	
	if mobile.progress > maxProgress:
		mobile.progress = maxProgress
	if mobile.progress < minProgress:
		mobile.progress = minProgress 
		
func _movement():
	var random = randf_range(0.0, 1.0)
	if(random < 0.01):
		speed = - speed
	

func _physics_process(delta):
	mobile.set_progress(mobile.get_progress() + speed * delta)
	
	_borders()
	_movement()
	
	print(mobile.progress)

	



	
