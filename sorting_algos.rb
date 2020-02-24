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

# This is where you'are at in the video
#
# https://youtu.be/Jdtq5uKz-w4?list=PL2_aWCzGMAwKedT2KfDMB9YA5DgASZb3U&t=261
def bubble_sort(a)
  i,j = 0,0
  while i <= a.length - 1
    while j <= a.length - 2
      if a[j+1] < a[j]
        a[j], a[j+1] = a[j+1], a[j]
      end
      j += 1
    end
    i += 1
  end
  puts "#{a}"
  a
end

bubble_sort([12,1,9,6,3,2,1,4])
