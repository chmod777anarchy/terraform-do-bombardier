#!/bin/bash

echo "How many droplets to add?"
read total

for num in $(seq 1 $total)
do
    cp "droplet.tf" "droplet-$num.tf"
    sed -i "s/bombard-0/bombard-$num/g" droplet-$num.tf
done
