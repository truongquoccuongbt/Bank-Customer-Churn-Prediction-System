build-env-jup:
	docker build -f ./docker/dev/dev.dockerfile -t ds_env_code .
build-env-jup-nocache:
	docker build -f ./docker/dev/dev.dockerfile --no-cache -t ds_env_code .
run-env-jup:
	docker run --name dev -it -p 8888:8888 -v .:/src ds_env_code
run-jup:
	jupyter server --port=8888 --no-browser --ip=0.0.0.0 --allow-root
build-dev:
	docker-compose -f .\docker-compose.yaml  -f .\docker-compose.dev.yaml build
run-dev:
	docker-compose -f .\docker-compose.yaml  -f .\docker-compose.dev.yaml up
stop-dev:
	docker-compose -f .\docker-compose.yaml  -f .\docker-compose.dev.yaml down
