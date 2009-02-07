#!/bin/bash

for i in D{1..4}
do
    echo -n "$i: "
    grep $i daten/CFHTLS.log | awk -F'|' '{ print $8 }' | \
    awk 'BEGIN {
                 n = 0
                 s = 0
                 s2 = 0
               }
               {
                 n++
                 s = s + $1
                 s2 = s2 + $1 * $1
               }
         END   {
                 m = s / n
                 sd = sqrt((s2 - n * m * m)/(n - 1.0))
                 print "stddev: ", sd, " avg: ", m
               }'
done
