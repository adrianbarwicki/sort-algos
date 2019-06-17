/*
swift ./selection-sort.swift

Pseudo code:
- Find the smallest item. Swap it with the first item.
- Find the second-smallest item. Swap it with the second item.
- Find the third-smallest item. Swap it with the third item.
- Repeat finding the next-smallest item, and swapping it into the correct position until the array is sorted.
*/

func selectionSort(_ array: [Int]) -> [Int] {
    var arr = array;
    var min: Int, temp: Int;

    for i in 0 ..< arr.count - 1 {
        min = i

        for j in (i + 1) ..< arr.count {
          if (arr[j] < arr[min]) {
            min = j;
          }
        }

        temp = arr[min];
        arr[min] = arr[i];
        arr[i] = temp;
    }

    return arr;
}

let list = [100, 0, 5, 8, 9, 3, 4, 1];

print(selectionSort(list));