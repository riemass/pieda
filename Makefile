all: 
	mkdir -p docs
	pandoc -t html5 \
			--standalone \
			--section-divs \
			--template=template-revealjs.html \
			--variable theme="moon" \
			--variable transition="linear" \
			--variable revealjs-url="https://revealjs.com" \
			--from markdown-markdown_in_html_blocks+raw_html \
			slides.md -o docs/index.html
	cp -r img docs

selfcontained: 
	mkdir -p docs
	pandoc -t html5 \
			--standalone \
			--self-contained \
			--section-divs \
			--template=template-revealjs.html \
			--variable theme="moon" \
			--variable transition="linear" \
			--variable revealjs-url="https://revealjs.com" \
			--from markdown-markdown_in_html_blocks+raw_html \
			slides.md -o docs/index.html
	cp -r img docs

			
clean:
	rm -rf docs
