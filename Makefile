all: install

install:
	@markdown --version >/dev/null || sudo apt install markdown
	@cp -f zm /usr/local/bin/zm

clean:
