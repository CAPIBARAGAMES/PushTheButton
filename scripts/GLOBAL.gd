extends Node
func _ready():
	pass

#Control
var score: int = 0;
var val_for_click = 1;
var max_score = 100


#Mejoras
const UPGRADE_1: int = 1;
const UPGRADE_2: int = 10;
const UPGRADE_3: int = 100;
const UPGRADE_4: int = 500;
const UPGRADE_5: int = 2000;
const UPGRADE_6: int = 5000;

#costo de mejoras
var cost_upgrade_1: int = 10;
var cost_upgrade_2: int = 200;
var cost_upgrade_3: int = 1500;
var cost_upgrade_4: int = 5000;
var cost_upgrade_5: int = 20000;
var cost_upgrade_6: int = 50000;

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
