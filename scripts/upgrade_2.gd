extends TouchScreenButton




func click_for_secon_upgrade1():
	if Global.score >= Global.cost_upgrade_2:
		Global.score -= Global.cost_upgrade_2
		Global.val_for_click += Global.UPGRADE_2
		$AudioStreamPlayer.play()
		actualizarscore()

func actualizarscore():
	var label_node = Global.get_main_score()
	if label_node:
		label_node.text = "SLIME:" + str (Global.score)



func _on_pressed():
	click_for_secon_upgrade1()
	pass # Replace with function body.
