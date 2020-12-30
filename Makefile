all: install

install:
	@markdown --version 2>&1 >/dev/null || sudo apt install markdown || { echo "Please install markdown manually." ; exit 1 ; }
	@cp -f zm /usr/local/bin/zm

clean:
