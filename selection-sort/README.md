# Selection sort
Selection sort is an in-place comparison sort. It has O(n2) time complexity, making it inefficient on large lists, and generally performs worse than the similar insertion sort. Selection sort is noted for its simplicity, and it has performance advantages over more complicated algorithms in certain situations, particularly where auxiliary memory is limited.

This repository contains an implemention of the selection sort in the following programming languages:
- C++: selection-sort.cpp
- JavaScript: selection-sort.js
- Python: selection-sort.py
- Bash: selection-sort.sh
- Swift: selection-sort.swift
- Java: selection-sort.java

The following pseudo code is implemented:
- Find the smallest item. Swap it with the first item.
- Find the second-smallest item. Swap it with the second item.
- Find the third-smallest item. Swap it with the third item.
- Repeat finding the next-smallest item, and swapping it into the correct position until the array is sorted.
