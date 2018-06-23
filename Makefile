SHELL := /bin/bash

PORT := 8089


server:
	python3 -m http.server $(PORT) 

demo:
	xdg-open 'http://localhost:$(PORT)/?data=demo.js&id=20170811_154249#-12:20:36'

