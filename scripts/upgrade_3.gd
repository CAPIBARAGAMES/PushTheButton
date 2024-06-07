extends TouchScreenButton




func click_for_secon_upgrade3():
	if Global.score >= Global.cost_upgrade_3:
		Global.score -= Global.cost_upgrade_3
		Global.val_for_click += Global.UPGRADE_3
		actualizarscore()

func actualizarscore():
	var label_node = Global.get_main_score()
	if label_node:
		label_node.text = "SLIME:" + str (Global.score)


func _on_pressed():
	click_for_secon_upgrade3()
	pass # Replace with function body.
