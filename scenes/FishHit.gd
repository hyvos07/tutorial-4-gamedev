extends RigidBody2D

@export var sceneName = "LoseScreen"
@export var despawn_time: float = 3.0

func _ready():
	await get_tree().create_timer(despawn_time).timeout
	if is_inside_tree():
		queue_free()

func _on_FallArea_body_entered(body):
	if body.get_name() != "Player":
		return

	print("tes")
	get_tree().change_scene_to_file("res://scenes/" + sceneName + ".tscn")
