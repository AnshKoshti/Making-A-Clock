extends Node2D

func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	var current_time = Time.get_time_dict_from_system()
	$SecondArm.rotation = current_time.second * TAU / 60.0
	$MinuteArm.rotation = current_time.minute * TAU / 60.0
	$HourArm.rotation = current_time.hour * TAU / 12.0
