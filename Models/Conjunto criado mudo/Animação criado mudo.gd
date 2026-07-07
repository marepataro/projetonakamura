extends StaticBody3D
@export var open = false
var playback = null

func _ready():
	playback = $AnimationTree.get("parameters/playback")
	
func gaveta_criado_mudo(_body):
	open = !open
	
	if open:
		playback.travel("Criado mudo abrir")
	else:
		playback.travel("Criado mudo fechar")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
