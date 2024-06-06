extends TouchScreenButton




func click_for_secon_upgrade4():
	if Global.score >= Global.cost_upgrade_4:
		Global.score -= Global.cost_upgrade_4
		Global.val_for_click += Global.UPGRADE_4
		actualizarscore()

func actualizarscore():
	var label_node = Global.get_main_score()
	if label_node:
		label_node.text = "SCORE:" + str (Global.score)


func _on_pressed():
	click_for_secon_upgrade4()
	pass # Replace with function body.
