#!/bin/bash

docker build -t="gschmutz/storm-base:0.9.5" storm-base
docker build -t="gschmutz/storm:0.9.5" storm
docker build -t="gschmutz/storm-nimbus:0.9.5" storm-nimbus
docker build -t="gschmutz/storm-supervisor:0.9.5" storm-supervisor
docker build -t="gschmutz/storm-ui:0.9.5" storm-ui
