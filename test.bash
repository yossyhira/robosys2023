#!/usr/bin/bash

out=$(seq 5 | ./plus)

[ "${out}" = 15 ]


