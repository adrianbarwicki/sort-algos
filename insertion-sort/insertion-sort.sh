#!/bin/bash

# i = 1
# while i < length(A)
#   j = i
#   while j > 0 and A[j-1] > A[j]
#       swap A[j] and A[j-1]
#       j = j - 1
#   end while
#   i = i + 1
# end while

arr=(0 5 8 9 3 4 1)

# 'for i in "${!arr[@]}"' iterates over the index value
# 'for i in "${arr[@]}"' would iterate over the values directly
for i in "${!arr[@]}"
do
  :
  j=$i

  while [ $j -gt 0 ] && [ ${arr[j - 1]} -gt ${arr[j]} ]
  do
    # swap
    tmp=${arr[j]}
    arr[j]=${arr[j-1]}
    arr[j-1]=$tmp

    # Arithmetic in bash uses $((...)) syntax
    j=$((j-1))
  done
done

echo ${arr[*]}
