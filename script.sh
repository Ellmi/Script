#!/bin/bash
function DEBUG()
{
[ "$_DEBUG" == "on"] && $@ || :
}

for i in {1..7}
do
DEBUG echo $i
done
