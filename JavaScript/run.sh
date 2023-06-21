#!/bin/bash

docker build -t javascript-calculator .
clear
docker run -it --rm --name javascript-calculator-app javascript-calculator
