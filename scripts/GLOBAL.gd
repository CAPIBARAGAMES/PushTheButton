extends Node
func _ready():
	pass

#Control
var score: int = 51198;
var val_for_click = 1;
var max_score = 100


#Mejoras
const UPGRADE_1: int = 1;
const UPGRADE_2: int = 5;
const UPGRADE_3: int = 25;
const UPGRADE_4: int = 125;
const UPGRADE_5: int = 625;
const UPGRADE_6: int = 3125;

#costo de mejoras
var cost_upgrade_1: int = 50;
var cost_upgrade_2: int = 200;
var cost_upgrade_3: int = 800;
var cost_upgrade_4: int = 3200;
var cost_upgrade_5: int = 12800;
var cost_upgrade_6: int = 51200;

#control de upgrades
var actualizacionupgrade = false

#spwn de botoss

#Control de los maximos y minios de score
func score_min():
	if score <= 0:
		score = 0





#Actualizar score desde los upgrades basados en la busqueda de la la tarjeta label
#primero se iguala la busqueda de la escena main usando get_tree
func get_main_score():
	var main_scene = get_tree().root.get_child(1)

	if main_scene:
		var label_node = main_scene.get_node("MarginContainer/HBoxContainer2/score")
		print(label_node)
		if label_node:
			return label_node 
			
		else:
			return null
