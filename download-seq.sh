#!/bin/bash
echo 'Start Number: '
read startNo 
echo 'End Number:'
read endNo 
echo 'Sequence Number: '
read seqNo

#for i in {$startNo..$endNo}
k=0
m=""
for(( i=$startNo; i<=$endNo; i++ ))
do 
#    echo "Downloading $i ..."
    #echo "SeqNo: $seqNo"
    if [ ($k -lt $seqNo) && ($endNo-$i -gt $seqNo) ]
    then
        m="$m\nhttp://auto.21cbr.com/$i.mp3"
        let "k+=1"
        echo $m
    else
        echo $m >> test.txt
        wget -c -r -i test.txt
        k=0
        m=""
    fi
done
