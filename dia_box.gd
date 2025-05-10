extends TextureRect


@export var coins: int
@export var exp: int

@onready var openingText = ["Hello and welcome to Z.O.N.E.!","In this game, you will have to unlock all kinds of zones!","In order to do so, you'll need to collect items located in unlocked zones, and then sell them to get EXP and coins!","You can use EXP to unlock new zones, or use coins to get upgrades.","Have fun,","-Z.O.N.E. dev team"]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	talk() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$"../Coin/Label".text = str(coins)
	$"../Exp/Label".text = str(exp)

func talk():
	for j in randi_range(0,len(openingText)):
		for i in randi_range(0,openingText[j].length()):
			$RichTextLabel.text = openingText[j].left(i)
			await get_tree().create_timer(0.05).timeout
