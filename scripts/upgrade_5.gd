extends TouchScreenButton


func click_for_secon_upgrade5():
	if Global.score >= Global.cost_upgrade_5:
		Global.score -= Global.cost_upgrade_5
		Global.val_for_click += Global.UPGRADE_5
		actualizarscore()

func actualizarscore():
	var label_node = Global.get_main_score()
	if label_node:
		label_node.text = "SCORE:" + str (Global.score)


func _on_pressed():
	click_for_secon_upgrade5()
	pass # Replace with function body.
