#!/bin/bash

IP=`hostname -I | cut -f1 -d' '`

rm ./_rel/test_app_2/releases/0.0.3/vm.args
echo "-setcookie s0m3aw3s0m3c00kie document.farm" >> ./_rel/test_app_2/releases/0.0.3/vm.args
echo "-name `hostname`@$IP" >> ./_rel/test_app_2/releases/0.0.3/vm.args

./_rel/test_app_2/bin/test_app_2 start
