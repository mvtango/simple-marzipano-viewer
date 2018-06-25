SHELL := /bin/bash

PORT := 8089


server:
	python3 -m http.server $(PORT) 

demo:
	xdg-open 'http://localhost:$(PORT)/?settings=demo.js&id=20170811_154249#-12:20:36'


viewer:
	xdg-open 'http://localhost:$(PORT)/viewall.html



#
source/tiles/% : source/images/%.jpg
	krpanotools makepano -config=contrib/krpano-to-marzipano.config  $<

