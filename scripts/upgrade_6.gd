extends TouchScreenButton




func click_for_secon_upgrade6():
	if Global.score >= Global.cost_upgrade_6:
		Global.score -= Global.cost_upgrade_6
		Global.val_for_click += Global.UPGRADE_6
		actualizarscore()

func actualizarscore():
	var label_node = Global.get_main_score()
	if label_node:
		label_node.text = "SLIME:" + str (Global.score)



func _on_pressed():
	click_for_secon_upgrade6()
	pass # Replace with function body.
