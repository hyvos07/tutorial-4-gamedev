extends Area2D

@export var sceneName = "LoseScreen"

func _on_FallArea_body_entered(body):
	if body.get_name() != "Player":
		return

	print("tes")
	get_tree().change_scene_to_file("res://scenes/" + sceneName + ".tscn")
