// g++ -o insertion-sort insertion-sort.cpp && ./insertion-sort

/*
i ← 1
while i < length(A)
    j ← i
    while j > 0 and A[j-1] > A[j]
        swap A[j] and A[j-1]
        j ← j - 1
    end while
    i ← i + 1
end while
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
    int arr[] = { 0, 5, 8, 9, 3, 4, 1 };  
    int length = sizeof(arr) / sizeof(arr[0]); 

    int i, tmp, j;

    for (i = 1; i < length; i++) {
        j = i;

        while (j > 0 && arr[j - 1] > arr[j]) {
            tmp = arr[j - 1];
            arr[j - 1] = arr[j];
            arr[j] = tmp;

            j = j - 1;
        }
    }  

    printArray(arr, length);  
  
    return 0;  
}
