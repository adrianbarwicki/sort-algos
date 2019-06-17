#!/bin/bash


# Pseudo code:
# - Find the smallest item. Swap it with the first item.
# - Find the second-smallest item. Swap it with the second item.
# - Find the third-smallest item. Swap it with the third item.
# - Repeat finding the next-smallest item, and swapping it into the correct position until the array is sorted.

array = ( 0 5 8 9 3 4 1 );

for (i = 0; i < array.length-1; i++) {
  min=i;
  for (j = i+1; j < array.length; j++)
    if (array[j] < array[min])
        min = j;

  x = array[i];
  array[i] = array[min];
  array[min] = x;
}

System.out.println(Arrays.toString(array));
