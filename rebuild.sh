#!/bin/bash

docker build -t="wurstmeister/storm-base:0.9.4" storm
docker build -t="wurstmeister/storm:0.9.4" storm
docker build -t="wurstmeister/storm-nimbus:0.9.4" storm-nimbus
docker build -t="wurstmeister/storm-supervisor:0.9.4" storm-supervisor
docker build -t="wurstmeister/storm-ui:0.9.4" storm-ui
