all: main.wasm

clean:
	rm -rf *.wasm

serve:
	python -m SimpleHTTPServer 8000

main.wasm:
	emcc main.c -Os -s WASM=1 -o index.html --shell-file html_template/shell_minimal.html
