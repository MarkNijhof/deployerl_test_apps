PROJECT = test_app_3

ERLC_OPTS = +debug_info +'{parse_transform,lager_transform}'

DEPS = cowboy lager

dep_cowboy = git https://github.com/ninenines/cowboy master

include erlang.mk

deps::
	sed -i.bak 's/\(stdlib\)$$/\1,\n\t\tssl/' deps/ranch/ebin/ranch.app

run:
	./run.sh

start:
	./start.sh

stop:
	./stop.sh
