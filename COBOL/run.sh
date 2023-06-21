#!/bin/bash

docker build -t cobol-calculator .
clear
docker run -it --rm --name cobol-calculator-app cobol-calculator
