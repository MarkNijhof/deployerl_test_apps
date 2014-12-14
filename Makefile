
releases:
	mkdir releases
	cd test_app_1 && make && tar --create --file=../releases/test_app_1_v0.0.2.tar start.sh stop.sh _rel
	cd test_app_2 && make && tar --create --file=../releases/test_app_2_v0.0.2.tar start.sh stop.sh _rel
	cd test_app_3 && make && tar --create --file=../releases/test_app_3_v0.0.2.tar start.sh stop.sh _rel
