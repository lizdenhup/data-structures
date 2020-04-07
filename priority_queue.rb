#!/usr/bin/env ruby

arr = [1,2,3,4,5,6]

def add(nums)
  return if nums.length == 0
  nums[0] + add(nums[1..-1])
end

target = arr.reduce(:+)
output = add(arr)
puts "#{output}"
