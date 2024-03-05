extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


export var velocidade = 3
func _process(delta):	
	# global_position em relação ao plano cartesiano
	get_parent().global_position.y += velocidade
	
