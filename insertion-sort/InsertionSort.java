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

// Compile: javac InsertionSort.java 
// Run: java InsertionSort

import java.util.Arrays;

public class InsertionSort {
  public static void main(String argv[]) {
    int[] arr = { 0, 5, 8, 9, 3, 4, 1 };

    int i = 0;

    while (i < arr.length) {
      int j = i;

      while (j > 0 && arr[j-1] > arr[j]) {
        // swap arr[j-1] with arr[j]
        int l = arr[j-1];

        arr[j-1] = arr[j];
        arr[j] = l;
        
        j--;
      }

      i++;
    }

    System.out.println(Arrays.toString(arr));
  }
}