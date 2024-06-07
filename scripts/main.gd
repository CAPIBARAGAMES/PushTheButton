extends Control

@onready var up_1 : PackedScene = load("res://scenas/upgrade_1.tscn")
@onready var up_2 : PackedScene = load("res://scenas/upgrade_2.tscn")
@onready var up_3 : PackedScene = load("res://scenas/upgrade_3.tscn")
@onready var up_4 : PackedScene = load("res://scenas/upgrade_4.tscn")
@onready var up_5 : PackedScene = load("res://scenas/upgrade_5.tscn")
@onready var up_6 : PackedScene = load("res://scenas/upgrade_6.tscn")

var new_button1 = false
var new_button2 = false
var new_button3 = false
var new_button4 = false
var new_button5 = false
var new_button6 = false

#control de score



#Aumenta el escore y llama funcion para actualizar
func _on_push_button_pressed():
	Global.score += Global.val_for_click
	$slime.play("damage")
	$espada.play()
	if new_button1 == false:
		new_up_button1()
	if new_button2 == false:
		new_up_button2()
	if new_button3 == false:
		new_up_button3()
	if new_button4 == false:
		new_up_button4()
	if new_button5 == false:
		new_up_button5()
	if new_button6 == false:
		new_up_button6()
	score_update()

#Actualiza la label de score
func score_update():
	%score.text = "SLIME:" + str(Global.score)



#Aparece un nuevo bonton de mejora
func new_up_button1():
	if Global.score >= 50: 
		var spawn_buton_1 = up_1.instantiate()
		add_child(spawn_buton_1)
		print("nuevo boton")
		new_button1 = true
		Global.get_main_score()


func new_up_button2():
	if Global.score >= 200: 
		var spawn_buton_2 = up_2.instantiate()
		add_child(spawn_buton_2)
		print("nuevo boton")
		new_button2 = true
		Global.get_main_score()

func new_up_button3():
	if Global.score >= 800: 
		var spawn_buton_3 = up_3.instantiate()
		add_child(spawn_buton_3)
		print("nuevo boton")
		new_button3 = true
		Global.get_main_score()


func new_up_button4():
	if Global.score >= 3200: 
		var spawn_buton_4 = up_4.instantiate()
		add_child(spawn_buton_4)
		print("nuevo boton")
		new_button4 = true
		Global.get_main_score()

func new_up_button5():
	if Global.score >= 12800: 
		var spawn_buton_5 = up_5.instantiate()
		add_child(spawn_buton_5)
		print("nuevo boton")
		new_button5 = true
		Global.get_main_score()

func new_up_button6():
	if Global.score >= 51200: 
		var spawn_buton_6 = up_6.instantiate()
		add_child(spawn_buton_6)
		print("nuevo boton")
		new_button6 = true
		Global.get_main_score()

#Aqui terminan todas las fucniones que se encargan de el spawn de todos los nodos de mejoras
