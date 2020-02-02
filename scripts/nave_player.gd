extends AnimatedSprite

var moving = 0
var speed = 100

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
	if(Input.is_key_pressed(KEY_RIGHT)):
		moving = 1
	elif(Input.is_key_pressed(KEY_LEFT)):
		moving = -1
	else:
		moving = 0