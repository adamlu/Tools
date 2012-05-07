#!/bin/bash
echo 'Start Number: '
read startNo 
echo 'End Number:'
read endNo 
echo '\n'

#for i in {$startNo..$endNo}
for(( i=$startNo; i<=$endNo; i++ ))
do 
    echo "Downloading $i ..."
    wget "http://auto.21cbr.com/$i.mp3"
done
