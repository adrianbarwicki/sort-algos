/*
node ./selection-sort.js

Pseudo code:
- Find the smallest item. Swap it with the first item.
- Find the second-smallest item. Swap it with the second item.
- Find the third-smallest item. Swap it with the third item.
- Repeat finding the next-smallest item, and swapping it into the correct position until the array is sorted.
*/

function selectionSort(array) {
  var arr = array;
  var min, temp;

  for (let i = 0; i < arr.length - 1; i++) {
      min = i

      for (let j = i + 1; j < arr.length; j++) {
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

console.log(selectionSort(list));