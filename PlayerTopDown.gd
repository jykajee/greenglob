extends CharacterBody2D


const SPEED := 500.0
const ANGULAR_SPEED := 5.0
@onready var _animated_sprite = $AnimatedSprite2D


func _physics_process(delta):
	
	var rotate_direction = Input.get_action_strength("right") - Input.get_action_strength("left")
	rotation += rotate_direction * ANGULAR_SPEED * delta
	
	var velocityy := (Input.get_action_strength("down") - Input.get_action_strength("up")) * transform.y * SPEED
	
	velocity.x = velocityy.x
	velocity.y = velocityy.y
	
	move_and_slide()
	if Input.is_action_pressed("left"):
		_animated_sprite.play("left")
	else: if Input.is_action_pressed("right"):
		_animated_sprite.play("right")
	else: if Input.is_action_pressed("up"):
		_animated_sprite.play("up")
	else: if Input.is_action_pressed("down"):
		_animated_sprite.play("down")
	else:
		_animated_sprite.play("still")
	
	
	
