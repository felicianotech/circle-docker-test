#!/bin/bash

# Exit on any error
set -e

kubectl patch deployment docker-hello-google -p '{"spec":{"template":{"spec":{"containers":[{"name":"docker-hello-google","image":"us.gcr.io/circle-ctl-test/hello:$(cat commit-hash.txt)"}]}}}}'
