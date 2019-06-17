
# python ./selection-sort.py

# Pseudo code:
# - Find the smallest item. Swap it with the first item.
# - Find the second-smallest item. Swap it with the second item.
# - Find the third-smallest item. Swap it with the third item.
# - Repeat finding the next-smallest item, and swapping it into the correct position until the array is sorted.

arr = [101, 99, 0, 5, 8, 9, 3, 4, 1]
i = 0

while i < len(arr) - 1:
  min = i
  j = i + 1

  while j < len(arr):
    if arr[j] < arr[min]:
      min = j
    j = j + 1

  tmp = arr[min]
  arr[min] = arr[i]
  arr[i] = tmp

  i = i + 1

print arr
