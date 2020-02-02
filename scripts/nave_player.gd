extends AnimatedSprite

var moving = 0
var speed = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	self.set_process(true)
	self.set_process_input(true)

func _draw():
	pass
	
func _process(delta):
	if moving == 1:
		self.global_translate(Vector2(speed * delta, 0))
		self.frame = 1
	elif moving == -1:
		self.global_translate(Vector2(-speed * delta, 0))
		self.frame = 2
	else:
		self.frame = 0

func _input(event):
	if(Input.is_action_pressed("move_right")):
		moving = 1
	elif(Input.is_action_pressed("move_left")):
		moving = -1
	else:
		moving = 0