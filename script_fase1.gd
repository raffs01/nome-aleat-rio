extends Node2D

func _ready():
	pass
	
func criar_inimigo():
	var cena_inimigo = preload("res://cena_inimigo.tscn")
	var objeto_inimigo = cena_inimigo.instance()
	
	get_tree().root.add_child(objeto_inimigo)
	
	randomize()
	var x = rand_range(50,get_viewport().size.x-50)
	
	objeto_inimigo.global_position.x = x
	objeto_inimigo.global_position.y = -50
