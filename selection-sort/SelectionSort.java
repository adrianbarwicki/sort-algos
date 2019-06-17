import java.util.Arrays;

/*
Pseudo code:
- Find the smallest item. Swap it with the first item.
- Find the second-smallest item. Swap it with the second item.
- Find the third-smallest item. Swap it with the third item.
- Repeat finding the next-smallest item, and swapping it into the correct position until the array is sorted.
*/

public class SelectionSort {
  public static void main(String[] argv) {
      int arr[] = { 0, 5, 8, 9, 3, 4, 1 };

      int i, j, min, tmp;

      for (i = 0; i < arr.length - 1; i++) {
         min=i;

         for (j = i + 1; j < arr.length; j++)
            if (arr[j] < arr[min])
               min = j;

         // swap the i-smallest card with the i-item
         tmp = arr[i];
         arr[i] = arr[min];
         arr[min] = tmp;
      }

     System.out.println(Arrays.toString(arr));
  }
}
