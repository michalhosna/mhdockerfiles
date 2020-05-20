# shellcheck shell=sh

if [ -t 1 ]; then
	DC_INTERACTIVITY=""
else
	DC_INTERACTIVITY="-T"
fi

docker_run() {
	if [ -t 0 ]; then
		docker run --rm --interactive --tty=true "$@"
	else
		docker run --rm --interactive --tty=false "$@"
	fi
}

docker_compose_run() {
	docker-compose run --rm $DC_INTERACTIVITY "$@"
}

docker_compose_exec() {
	docker-compose exec $DC_INTERACTIVITY "$@"
}
