serve:
	hugo server --bind 0.0.0.0

build:
	npm ci
	npm run build
	hugo --gc --minify