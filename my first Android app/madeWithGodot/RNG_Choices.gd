extends Control
# 225x 400y 
# 10, 6 -- 225 - 32 = 193/--94


#Ready the Nodes!!!
onready var button = get_node("ColorRect2/Button")
onready var outBox = get_node("ColorRect2/RichTextLabel")
onready var opt1 = get_node("ColorRect2/LineEdit1")
onready var opt2 = get_node("ColorRect2/LineEdit2")
onready var opt3 = get_node("ColorRect2/LineEdit3")
onready var opt4 = get_node("ColorRect2/LineEdit4")
onready var opt5 = get_node("ColorRect2/LineEdit5")
onready var opt6 = get_node("ColorRect2/LineEdit6")
onready var opt7 = get_node("ColorRect2/LineEdit7")
onready var opt8 = get_node("ColorRect2/LineEdit8")
onready var opt9 = get_node("ColorRect2/LineEdit9")
onready var opt10 = get_node("ColorRect2/LineEdit10")
onready var opt11 = get_node("ColorRect2/LineEdit11")
onready var opt12 = get_node("ColorRect2/LineEdit12")
onready var opt13 = get_node("ColorRect2/LineEdit13")
onready var opt14 = get_node("ColorRect2/LineEdit14")
onready var opt15 = get_node("ColorRect2/LineEdit15")
onready var opt16 = get_node("ColorRect2/LineEdit16")
onready var opt17 = get_node("ColorRect2/LineEdit17")
onready var opt18 = get_node("ColorRect2/LineEdit18")
onready var opt19 = get_node("ColorRect2/LineEdit19")
onready var opt20 = get_node("ColorRect2/LineEdit20")


var rng = RandomNumberGenerator.new()
var choiceNum = 2
var choiceStr = "BLANK CHOICE BOX"


# Called when the node enters the scene tree for the first time.
func _ready():
	opt1.connect("text_entered", self, "text_entered")
	opt2.connect("text_entered", self, "text_entered")
	opt3.connect("text_entered", self, "text_entered")
	opt4.connect("text_entered", self, "text_entered")
	opt5.connect("text_entered", self, "text_entered")
	opt6.connect("text_entered", self, "text_entered")
	opt7.connect("text_entered", self, "text_entered")
	opt8.connect("text_entered", self, "text_entered")
	opt9.connect("text_entered", self, "text_entered")
	opt10.connect("text_entered", self, "text_entered")
	opt11.connect("text_entered", self, "text_entered")
	opt12.connect("text_entered", self, "text_entered")
	opt13.connect("text_entered", self, "text_entered")
	opt14.connect("text_entered", self, "text_entered")
	opt15.connect("text_entered", self, "text_entered")
	opt16.connect("text_entered", self, "text_entered")
	opt17.connect("text_entered", self, "text_entered")
	opt18.connect("text_entered", self, "text_entered")
	opt19.connect("text_entered", self, "text_entered")
	opt20.connect("text_entered", self, "text_entered")
	opt3.hide()
	opt4.hide()
	opt5.hide()
	opt6.hide()
	opt7.hide()
	opt8.hide()
	opt9.hide()
	opt10.hide()
	opt11.hide()
	opt12.hide()
	opt13.hide()
	opt14.hide()
	opt15.hide()
	opt16.hide()
	opt17.hide()
	opt18.hide()
	opt19.hide()
	opt20.hide()
	button.set_text("Roll: " + str(choiceNum))


# RNG FOR ALL BOXES
func _on_Button_pressed():
	rng.randomize()
	var my_rng = (rng.randf_range(0, choiceNum) as int) + 1
	match my_rng:
		20:
			if opt20.get_text() != '':
				choiceStr = opt20.get_text()
			else:
				choiceStr = "REROLL"
		19:
			if opt19.get_text() != '':
				choiceStr = opt19.get_text()
			else:
				choiceStr = "REROLL"
		18:
			if opt18.get_text() != '':
				choiceStr = opt18.get_text()
			else:
				choiceStr = "REROLL"
		17:
			if opt17.get_text() != '':
				choiceStr = opt17.get_text()
			else:
				choiceStr = "REROLL"
		16:
			if opt16.get_text() != '':
				choiceStr = opt16.get_text()
			else:
				choiceStr = "REROLL"
		15:
			if opt15.get_text() != '':
				choiceStr = opt15.get_text()
			else:
				choiceStr = "REROLL"
		14:
			if opt14.get_text() != '':
				choiceStr = opt14.get_text()
			else:
				choiceStr = "REROLL"
		13:
			if opt13.get_text() != '':
				choiceStr = opt13.get_text()
			else:
				choiceStr = "REROLL"
		12:
			if opt12.get_text() != '':
				choiceStr = opt12.get_text()
			else:
				choiceStr = "REROLL"
		11:
			if opt11.get_text() != '':
				choiceStr = opt11.get_text()
			else:
				choiceStr = "REROLL"
		10:
			if opt10.get_text() != '':
				choiceStr = opt10.get_text()
			else:
				choiceStr = "REROLL"
		9:
			if opt9.get_text() != '':
				choiceStr = opt9.get_text()
			else:
				choiceStr = "REROLL"
		8:
			if opt8.get_text() != '':
				choiceStr = opt8.get_text()
			else:
				choiceStr = "REROLL"
		7:
			if opt7.get_text() != '':
				choiceStr = opt7.get_text()
			else:
				choiceStr = "REROLL"
		6:
			if opt6.get_text() != '':
				choiceStr = opt6.get_text()
			else:
				choiceStr = "REROLL"
		5:
			if opt5.get_text() != '':
				choiceStr = opt5.get_text()
			else:
				choiceStr = "REROLL"
		4:
			if opt4.get_text() != '':
				choiceStr = opt4.get_text()
			else:
				choiceStr = "REROLL"
		3:
			if opt3.get_text() != '':
				choiceStr = opt3.get_text()
			else:
				choiceStr = "REROLL"
		2:
			if opt2.get_text() != '':
				choiceStr = opt2.get_text()
			else:
				choiceStr = "REROLL"
		1:
			if opt1.get_text() != '':
				choiceStr = opt1.get_text()
			else:
				choiceStr = "REROLL"
		_:
			choiceStr = "Error, this shouldn't happen EVER."
		
	outBox.text = str("You rolled ", my_rng ,".\nDo this option:\n", choiceStr)

# trying to change their colors... alternative to hide()
func some():
	if opt2.get_text() == '':
		opt2.set('custom_colors/bg_color', Color(0, 0, 0, 200))
	else:
		opt2.set('custom_colors/bg_color', Color(255, 255, 255, 200))
		opt2.set('custom_colors/font_color', Color(0, 0, 0))

# HIDES THE BOXES NOT BEING USED & SETS choiceNum
func _on_LineEdit2_text_changed(_new_text):
	if opt2.get_text() == '': 
		opt3.hide()
		choiceNum = 2
		button.set_text("Roll: " + str(choiceNum))
	else: 
		opt3.show()
		choiceNum = 3
		button.set_text("Roll: " + str(choiceNum))
func _on_LineEdit3_text_changed(_new_text):
	if opt3.get_text() == '': 
		opt4.hide()
		choiceNum = 3
		button.set_text("Roll: " + str(choiceNum))
	else: 
		opt4.show()
		choiceNum = 4
		button.set_text("Roll: " + str(choiceNum))
func _on_LineEdit4_text_changed(_new_text):
	if opt4.get_text() == '': 
		opt5.hide()
		choiceNum = 4
		button.set_text("Roll: " + str(choiceNum))
	else: 
		opt5.show()
		choiceNum = 5
		button.set_text("Roll: " + str(choiceNum))
func _on_LineEdit5_text_changed(_new_text):
	if opt5.get_text() == '': 
		opt6.hide()
		choiceNum = 5
		button.set_text("Roll: " + str(choiceNum))
	else: 
		opt6.show()
		choiceNum = 6
		button.set_text("Roll: " + str(choiceNum))
func _on_LineEdit6_text_changed(_new_text):
	if opt6.get_text() == '': 
		opt7.hide()
		choiceNum = 6
		button.set_text("Roll: " + str(choiceNum))
	else: 
		opt7.show()
		choiceNum = 7
		button.set_text("Roll: " + str(choiceNum))
func _on_LineEdit7_text_changed(_new_text):
	if opt7.get_text() == '': 
		opt8.hide()
		choiceNum = 7
		button.set_text("Roll: " + str(choiceNum))
	else: 
		opt8.show()
		choiceNum = 8
		button.set_text("Roll: " + str(choiceNum))
func _on_LineEdit8_text_changed(_new_text):
	if opt8.get_text() == '': 
		opt9.hide()
		choiceNum = 8
		button.set_text("Roll: " + str(choiceNum))
	else: 
		opt9.show()
		choiceNum = 9
		button.set_text("Roll: " + str(choiceNum))
func _on_LineEdit9_text_changed(_new_text):
	if opt9.get_text() == '': 
		opt10.hide()
		choiceNum = 9
		button.set_text("Roll: " + str(choiceNum))
	else: 
		opt10.show()
		choiceNum = 10
		button.set_text("Roll: " + str(choiceNum))
func _on_LineEdit10_text_changed(_new_text):
	if opt10.get_text() == '': 
		opt11.hide()
		choiceNum = 10
		button.set_text("Roll: " + str(choiceNum))
	else: 
		opt11.show()
		choiceNum = 11
		button.set_text("Roll: " + str(choiceNum))
func _on_LineEdit11_text_changed(_new_text):
	if opt11.get_text() == '': 
		opt12.hide()
		choiceNum = 11
		button.set_text("Roll: " + str(choiceNum))
	else: 
		opt12.show()
		choiceNum = 12
		button.set_text("Roll: " + str(choiceNum))
func _on_LineEdit12_text_changed(_new_text):
	if opt12.get_text() == '': 
		opt13.hide()
		choiceNum = 12
		button.set_text("Roll: " + str(choiceNum))
	else: 
		opt13.show()
		choiceNum = 13
		button.set_text("Roll: " + str(choiceNum))
func _on_LineEdit13_text_changed(_new_text):
	if opt13.get_text() == '': 
		opt14.hide()
		choiceNum = 13
		button.set_text("Roll: " + str(choiceNum))
	else: 
		opt14.show()
		choiceNum = 14
		button.set_text("Roll: " + str(choiceNum))
func _on_LineEdit14_text_changed(_new_text):
	if opt14.get_text() == '': 
		opt15.hide()
		choiceNum = 14
		button.set_text("Roll: " + str(choiceNum))
	else: 
		opt15.show()
		choiceNum = 15
		button.set_text("Roll: " + str(choiceNum))
func _on_LineEdit15_text_changed(_new_text):
	if opt15.get_text() == '': 
		opt16.hide()
		choiceNum = 15
		button.set_text("Roll: " + str(choiceNum))
	else: 
		opt16.show()
		choiceNum = 16
		button.set_text("Roll: " + str(choiceNum))
func _on_LineEdit16_text_changed(_new_text):
	if opt16.get_text() == '': 
		opt17.hide()
		choiceNum = 16
		button.set_text("Roll: " + str(choiceNum))
	else: 
		opt17.show()
		choiceNum = 17
		button.set_text("Roll: " + str(choiceNum))
func _on_LineEdit17_text_changed(_new_text):
	if opt17.get_text() == '': 
		opt18.hide()
		choiceNum = 17
		button.set_text("Roll: " + str(choiceNum))
	else: 
		opt18.show()
		choiceNum = 18
		button.set_text("Roll: " + str(choiceNum))
func _on_LineEdit18_text_changed(_new_text):
	if opt18.get_text() == '': 
		opt19.hide()
		choiceNum = 18
		button.set_text("Roll: " + str(choiceNum))
	else: 
		opt19.show()
		choiceNum = 19
		button.set_text("Roll: " + str(choiceNum))
func _on_LineEdit19_text_changed(_new_text):
	if opt19.get_text() == '': 
		opt20.hide()
		choiceNum = 19
		button.set_text("Roll: " + str(choiceNum))
	else: 
		opt20.show()
		choiceNum = 20
		button.set_text("Roll: " + str(choiceNum))
