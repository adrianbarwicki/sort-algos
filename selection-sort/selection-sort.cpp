// g++ -o selection-sort selection-sort.cpp && ./selection-sort

/*
node ./selection-sort.js

Pseudo code:
- Find the smallest item. Swap it with the first item.
- Find the second-smallest item. Swap it with the second item.
- Find the third-smallest item. Swap it with the third item.
- Repeat finding the next-smallest item, and swapping it into the correct position until the array is sorted.
*/
#include <iostream>

using namespace std; 

void printArray(int arr[], int n) {
    int i;  
    for (i = 0; i < n; i++)  
        cout << arr[i] << " ";  
    cout << endl; 
}  

int main() {
    int arr[] = { 101, 100, 0, 5, 8, 9, 3, 4, 1 };  
    int length = sizeof(arr) / sizeof(arr[0]); 

    int i, tmp, j, min;

    for (i = 0; i < length - 1; i++) {
        min = i;

        for (j = i + 1; j < length; j++) {
          if (arr[j] < arr[min]) {
            min = j;
          }
        }

        tmp = arr[min];
        arr[min] = arr[i];
        arr[i] = tmp;
    }  

    printArray(arr, length);  
  
    return 0;  
}
