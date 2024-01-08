extends CanvasLayer

@onready var player = get_parent().get_parent().get_parent().get_node("Player")

# Called when the node enters the scene tree for the first time.
func _ready():
	
	get_child(0).get_child(1).get_node("HealthValue").text = str(player.health)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
