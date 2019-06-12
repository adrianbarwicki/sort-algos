# i = 1
# while i < length(A)
#   j = i
#   while j > 0 and A[j-1] > A[j]
#       swap A[j] and A[j-1]
#       j = j - 1
#   end while
#   i = i + 1
# end while

arr = [0, 5, 8, 9, 3, 4, 1]
i = 0

while i < len(arr):
    j = i

    while (j > 0 and arr[j-1] > arr[j]):
        l = arr[j-1]

        arr[j-1] = arr[j]
        arr[j] = l
        
        j = j - 1


    i = i + 1

print arr
