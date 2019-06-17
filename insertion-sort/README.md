# Insertion sort
Insertion sort is a simple sorting algorithm that is relatively efficient for small lists and mostly sorted lists, and is often used as part of more sophisticated algorithms. It works by taking elements from the list one by one and inserting them in their correct position into a new sorted list. In arrays, the new list and the remaining elements can share the array's space, but insertion is expensive, requiring shifting all following elements over by one. Shellsort (see below) is a variant of insertion sort that is more efficient for larger lists.

This repository contains an implemention of the insertion sort in the following programming languages:
- C++: insertion-sort.cpp
- JavaScript: insertion-sort.js
- Python: insertion-sort.py
- Bash: insertion-sort.sh
- Swift: insertion-sort.swift
- Java: insertion-sort.java

The following pseudo code is implemented:
```
i ← 1
while i < length(A)
    j ← i
    while j > 0 and A[j-1] > A[j]
        swap A[j] and A[j-1]
        j ← j - 1
    end while
    i ← i + 1
end while
```
