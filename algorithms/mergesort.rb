# @param {Integer[]} nums
# @return {Integer[]}
def sort_array(nums)
  if nums.size == 0 || nums.size == 1
    return nums
  end
  midpoint = nums.size / 2
  left_arr = nums.slice(0...midpoint)
  right_arr = nums.slice(midpoint..-1)
  sort_array(left_arr)
  sort_array(right_arr)
  merge(left_arr, right_arr)
end

# @param {Integer[]} a
# @param {Integer[]} b
# @return {Integer[]} c
def merge(a, b)
  i = 0; j = 0
  c = []
  n = [a.size, b.size].min
  if a.size > b.size
    remainder = a.slice(b.size)
  elsif a.size < b.size
    remainder = b.slice(a.size)
  end
  for k in 0..n
    if a[i] < b[j]
      c[k] = a[i]
      i += 1
    elsif a[i] > b[j]
        c[k] = b[j]
        j += 1
    else
      c[k] = a[i]
      i += 1
    end
  end
  c << remainder if remainder
  return c
end
