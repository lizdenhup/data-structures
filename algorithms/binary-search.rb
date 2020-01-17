# recursive implementation
def rec_binary_search(arr, high, low, target)
end

# iterative implementation
def it_binary_search(arr, target)
  return -1 if arr.empty?
  left = 0
  right = arr.length - 1
  while left <= right
    midpoint = left + (right - left) / 2
    if target < arr[midpoint]
      right = mid - 1
    elsif target > arr[midpoint]
      left = mid + 1
    else
      return midpoint
    end
    -1
end
