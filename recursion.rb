#!/usr/bin/env ruby

arr = [1,2,3,4,5,6]

def add(nums)
  puts "nums: #{nums}"
  return 0 if nums.length == 0
  nums[0] + add(nums[1..-1])
end

target = arr.reduce(:+)
puts "t: #{target}"
output = add(arr)
puts "output: #{output}"
