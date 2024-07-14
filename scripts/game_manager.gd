extends Node

var score := 0

@onready var score_label := $ScoreLabel

func increment_score():
    score += 1
    score_label.text = "You collected " + str(score) + " coins"
    print("Score: ", score)
