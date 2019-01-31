all: \
out/laos.png \
out/papua_new_guinea.png \
out/globe.png \
out/dpla.png \
out/lfa_square.png \
out/lfa_circle.png \
out/preview.html

out:
	mkdir -p out

out/laos.png: src/laos.svg out export.sh
	./export.sh src/laos.svg out/laos.png

out/papua_new_guinea.png: src/papua_new_guinea.svg out export.sh
	./export.sh src/papua_new_guinea.svg out/papua_new_guinea.png

out/globe.png: src/globe.svg out export.sh
	./export.sh src/globe.svg out/globe.png

out/dpla.png: src/dpla.svg out
	./export.sh src/dpla.svg out/dpla.png

out/lfa_square.png: src/lfa_square.png out
	convert src/lfa_square.png -scale 1% out/lfa_square.png

out/lfa_circle.png: src/lfa_circle.png out
	convert src/lfa_circle.png -scale 1% out/lfa_circle.png

out/preview.html: src/preview.html out
	cp src/preview.html out/preview.html

clean:
	rm -rf out

