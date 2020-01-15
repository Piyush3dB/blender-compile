export


clone:
	rm -rf docker/blender-src
	git clone https://git.blender.org/blender.git docker/blender-src
	cd docker/blender-src && git submodule update --init --recursive && git submodule foreach git checkout master && git submodule foreach git pull --rebase origin master

build:
	ls
	docker-compose build --pull

run:
	docker-compose up

run_d:
	docker-compose up -d

clean:
	rm -rf ./venv;

venv:
	virtualenv ./venv -p /usr/bin/python3;


# https://github.com/behollister/blender2.8
# #./build_files/build_environment/install_deps.sh --with-all --no-confirm
