all: install

install:
	markdown --version 2>/dev/null || sudo apt install markdown
	@cp -f zm /usr/local/bin/zm

clean:
