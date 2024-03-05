extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

var velocidade = 8
func _process(delta):
	get_parent().global_position.y -= velocidade


func _colisaoComArea2D(area):
	if (area.name == "Inimigo" ):
		area.get_parent().queue_free()
		get_parent().queue_free()




