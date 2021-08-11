extends Node

onready var progressbar = preload("res://ProgressBar.tscn")
onready var main = preload("res://Control.tscn")
var rng = RandomNumberGenerator.new()
var bars = []
var numbers = []
var number : int

var num_q : int = 1000 #Here you type how many random numbers you want to be added
var size : int = 1000 #Here you type how many bars you want to have

func start():
	for i in range(1, size + 1):
		var p = progressbar.instance()
		self.add_child(p)
		p.rect_size.y = 1000 / size
		p.rect_position.x = 0
		p.rect_position.y = (i-1) * p.rect_size.y
		bars.append(p)

func timer_end():
	rng.randomize()
	for i in range(num_q):
		numbers.append(rng.randi_range(0, size/num_q))
	for i in range(num_q):
		number = numbers[i] + number
	bars[number].add_value()
	numbers = []
	number = 0

func final():
	var Main = main.instance()
	Main.timer_stop()
