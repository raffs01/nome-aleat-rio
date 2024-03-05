extends KinematicBody2D


var qtd_vidas = 3 #Quantidade de vidas do personagem

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
var mov = Vector2.ZERO
var velocidade = 300
func _process(delta):
	mov.x = 0
	mov.y = 0	
	
	var largura = get_viewport().size.x
	var altura = get_viewport().size.y
	var posX = global_position.x
	var posY = global_position.y
	
	if (Input.is_action_pressed("ui_left") and posX>0):
		mov.x = -velocidade
	if (Input.is_action_pressed("ui_right") and posX<largura):
		mov.x = velocidade
	if (Input.is_action_pressed("ui_up") and posY>0):
		mov.y = -velocidade	
	if (Input.is_action_pressed("ui_down")and posY<altura):
		mov.y = velocidade
		
	if (Input.is_action_just_pressed("ui_accept")):		
		var cena_disparo   = preload("res://cena_disparo.tscn")
		var objeto_disparo = cena_disparo.instance()
		get_tree().root.add_child(objeto_disparo)
		
		objeto_disparo.global_position = $Position2D.global_position
		 
		
		
	
	mov = mov.normalized()	* velocidade #suaviza o movimento
		
	move_and_slide(mov)




