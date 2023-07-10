
.PHONY: create
create:
	cd rainbow && rm -rf fifo && mkfifo fifo
	cd rainbow && rm -rf socket && python -c "import socket as s; sock = s.socket(s.AF_UNIX); sock.bind('./socket')"
	cd rainbow && chmod o+u suidfile
