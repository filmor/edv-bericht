#!/bin/bash

cat daten/daten.txt | \
awk 'BEGIN {
             n_1 = 0
             n_2 = 0
             s_1 = 0
             s2_1 = 0
             s_2 = 0
             s2_2 = 0
           }
           {
             d = $2 - $3
             if ($1 < 2400)
                 n_1++
                 s_1 = s_1 + d
                 s2_1 = s2_1 + d * d
             if ($1 >= 2400)
                 n_2++
                 s_2 = s_2 + d
                 s2_2 = s2_2 + d * d
           }
     END   {
             m1 = s_1 / n_1
             sd1 = sqrt((s2_1 - n_1 * m1 * m1)/(n_1 - 1.0))
             m2 = s_2 / n_2
             sd2 = sqrt((s2_2 - n_2 * m2 * m2)/(n_2 - 1.0))
             print "Vorher:  avg=", m1, " stddev=", sd1
             print "Nachher: avg=", m2, " stddev=", sd2
           }'

