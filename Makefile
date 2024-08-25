
# Jupiter enviroment
build-env-jup: ## build env for jupiter local
	docker build -f ./docker/dev/dev.dockerfile -t ds_env_code .
build-env-jup-nocache: ## build env for jupiter local no cache
	docker build -f ./docker/dev/dev.dockerfile --no-cache -t ds_env_code .
run-env-jup: ## run env for jupiter local and use browser
	docker run --name dev -it -p 8888:8888 -v .:/src ds_env_code
run-jup: ## run env for jupiter local server and connect by vscode
	jupyter server --port=8888 --no-browser --ip=0.0.0.0 --allow-root

# Devlopment API
build-api:
	docker-compose -f ./docker-compose.yaml  -f ./docker-compose.dev.yaml build
run-api:
	docker-compose -f ./docker-compose.yaml  -f ./docker-compose.dev.yaml up
stop-api:
	docker-compose -f ./docker-compose.yaml  -f ./docker-compose.dev.yaml down

# Build env for jenkins
build-jen:
	docker build -f jenkins/Dockerfile -t jenkins:custom .
run-jen:
	docker compose -f jenkins/dev.docker-compose.yaml up
down-jen:
	docker compose -f jenkins/dev.docker-compose.yaml down

start-all-serv-dev: ## start all service in dev env
	docker compose -f jenkins/dev.docker-compose.yaml up -d
	docker-compose -f ./docker-compose.yaml  -f ./docker-compose.dev.yaml up -d
	docker run --name dev -it -p 8888:8888 -v .:/src ds_env_code -d

stop-all-serv-dev:
	docker stop dev


# Help
help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[.a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)