.PHONY: serve build clean

serve:
	hugo server -D --navigateToChanged

build:
	hugo --minify

clean:
	rm -rf public/ resources/ _vendor/ .hugo_build.lock
