class_name GameSignal extends Resource

var game_signal_listeners: Array[GameSignalListener] = []
#signal test_signal   testing not working

func raise() -> void:
	for n in range(game_signal_listeners.size(),0,-1):
		print("raise event: " + str(game_signal_listeners[n-1]))
		game_signal_listeners[n-1].emit_response_signal()

func register_listener(game_signal_listener: GameSignalListener) -> void:
	if(!game_signal_listeners.has(game_signal_listener)):
		game_signal_listeners.append(game_signal_listener)

func unregister_listener(game_signal_listener: GameSignalListener) -> void:
	if(game_signal_listeners.has(game_signal_listener)):
		game_signal_listeners.erase(game_signal_listener)
