# O(n^2) runtime complexity
# O(n) extra memory; not in place sorting algorithm
# def selection_sort(arr)
#   left = []
#   while arr.size > 0
#     left << arr.min
#     arr.delete_at(arr.index arr.min)
#   end
#   left
# end

# in place selection sort
# Still O(n) time complexity
# O(c) space complexity
# def in_place_ss(arr)
#   i = 0
#   while i <= arr.length - 1
#     subarr = arr[i, arr.length - i]
#     min_index = arr.index(subarr.min)
#     tmp1 = arr[i]
#     arr[i] = arr[min_index]
#     arr[min_index] = tmp1
#     i += 1
#   end
#   puts "#{arr}"
#   arr
# end

# in_place_ss([3,5,1,9,12])

# WIP -- right now you are only doing one pass of the
# array...you need to do n-1 passes to get the nth largest
# elements to bubble to the right length - 1 - nth place.
def bubble_sort(a)
  i = 0
  while i <= a.length - 2
    puts "i: #{i}"
    if a[i] > a[i+1]
      tmp = a[i]
      a[i] = a[i+1]
      a[i+1] = tmp
    end
    i += 1
  end
  puts "#{a}"
  a
end

bubble_sort([12,1,9,6,3,2,1,4])
