#!/bin/bash

docker run --name sgquote --rm -v "$(pwd)":/app --workdir /app --user $(id -u):$(id -g) ruby:2.5.5-slim ruby sgquote.rb "$@"
