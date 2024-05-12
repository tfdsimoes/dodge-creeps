extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	var mob_types = $AnimatedSprite2D.sprite_frames.get_animation_names()
	var selected_mob = mob_types[randi() % mob_types.size()]
	$AnimatedSprite2D.play(selected_mob)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_visible_on_screen_enabler_2d_screen_exited():
	queue_free()
