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

func insertionSort(_ array: [Int]) -> [Int] {
    var arr = array			 // 1
    for x in 1.. < arr.count {		 // 2
        var y = x
        while y > 0 && arr[y] < arr[y - 1] { // 3
            arr.swapAt(y - 1, y)
            y -= 1
        }
    }
    return arr
}

let list = [0, 5, 8, 9, 3, 4, 1]

print(insertionSort(list))
