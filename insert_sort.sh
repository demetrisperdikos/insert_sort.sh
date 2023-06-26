#!/bin/bash

arr=("$@")

insertionSorting() {
#implementing basic insertion sorting algorithm
    for ((i=1;i<${#arr[@]};i++))
    do
    #setting the key
        key=${arr[i]}
        j=$((i-1))
        while [[ $j -ge 0 && ${arr[j]} -gt $key ]]
        do
            arr[$((j+1))]=${arr[j]}
            j=$((j-1))
        done
        arr[$((j+1))]=$key
    done
}
#calling the function
insertionSorting


#printing the array
echo "${arr[@]}"


