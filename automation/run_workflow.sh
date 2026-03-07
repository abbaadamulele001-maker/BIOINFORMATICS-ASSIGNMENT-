#!/bin/bash

# Create CSV header
echo "Name,Email,Slack Username,Area of Interest" > output.csv

# Run Python script and append
python3 scripts/python_script.py | paste -sd "," >> output.csv

# Run R script and append
Rscript scripts/r_script.R | paste -sd "," >> output.csv

# Run Java script and append
javac scripts/java_script.java
java -cp scripts java_script | paste -sd "," >> output.csv

# Run Perl script and append
perl scripts/perl_script.pl | paste -sd "," >> output.csv

# Run C++ script and append
g++ scripts/cpp_script.cpp -o scripts/cpp_script
scripts/cpp_script | paste -sd "," >> output.csv