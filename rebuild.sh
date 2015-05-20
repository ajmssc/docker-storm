#!/bin/bash

docker build -t="gschmutz/storm-base" storm-base
docker build -t="gschmutz/storm" storm
docker build -t="gschmutz/storm-nimbus" storm-nimbus
docker build -t="gschmutz/storm-supervisor" storm-supervisor
docker build -t="gschmutz/storm-ui" storm-ui
