TPROC := ../../../scripts/tproc.py

BEE_MOVIE_SCRIPT := 'https://gist.githubusercontent.com/MattIPv4/045239bc27b16b2bcf7a3a9a4648c08a/raw/2411e31293a35f3e565f61e7490a806d4720ea7e/bee%2520movie%2520script'
BEESCRIPT_PY := 'https://raw.githubusercontent.com/VilgotanL/BeeScript/d9328cefc72e5196593f1a33c62b28963161c5fa/beescript.py'

part1: tmp/beescript.py tmp/input.txt.modified tmp/part1.beescript
	cd tmp && cat input.txt.modified | python3 beescript.py part1.beescript

part2: tmp/beescript.py tmp/input.txt.modified tmp/part2.beescript
	cd tmp && cat input.txt.modified | python3 beescript.py part2.beescript

tmp/part1.beescript: $(TPROC) part1.beescript.tproc
	$(TPROC) part1.beescript.tproc > tmp/part1.beescript

tmp/part2.beescript: $(TPROC) part2.beescript.tproc
	$(TPROC) part2.beescript.tproc > tmp/part2.beescript

tmp/input.txt.modified: input.txt
	mkdir -p tmp
	sed 's,.,\0\n,g' input.txt > tmp/input.txt.modified

tmp/beescript.py:
	mkdir -p tmp
	wget $(BEE_MOVIE_SCRIPT) -qO tmp/beemoviescript.txt
	wget $(BEESCRIPT_PY) -qO tmp/beescript.py
	find patches -type f -name 'beescript_*.diff' -print0 | sort -z | xargs -t -0 -n 1 patch tmp/beescript.py

clean:
	rm -r tmp
