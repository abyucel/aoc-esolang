TPROC_URL := 'https://raw.githubusercontent.com/kosarev/tproc/6f8fbad55f9bc094b3a0530f21815cee4351c0a0/tproc.py'

scripts/tproc.py: scripts
	wget $(TPROC_URL) -O scripts/tproc.py
	find patches -type f -name 'tproc_*.diff' -print0 | sort -z | xargs -t -0 -n 1 patch scripts/tproc.py
	chmod +x scripts/tproc.py

scripts:
	mkdir scripts
