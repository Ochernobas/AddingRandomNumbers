extends ProgressBar

func add_value():
	value = value + 1
	if value == max_value:
		Global.final()
