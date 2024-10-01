extends Node3D

@onready var animation_player: AnimationPlayer = $cameraRig/AnimationPlayer
var x = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animation_player.play("intro")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		if animation_player.current_animation != "intro":
			get_tree().change_scene_to_file("res://scenes/world.tscn")
