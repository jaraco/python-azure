#!/usr/bin/env bash

service ssh start

eval "exec $@"
