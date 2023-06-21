#!/bin/bash

docker build -t python-calculator .
clear
docker run -it --rm --name python-calculator-app python-calculator
