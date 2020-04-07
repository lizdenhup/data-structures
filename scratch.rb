#!/usr/bin/env ruby

def remove_elements(arr, target)
  k = 0
  i = 0
  while i <= arr.length - 1
    if arr[i] != target
      puts "arr_k: #{arr[k]}, arr_i: #{arr[i]}"
      arr[k] = arr[i]
      k += 1
      puts "k: #{k}"
      puts "arr: #{arr}"
    end
    i += 1
    puts "#{i}"
    puts "arr: #{arr}"
  end
  puts "#{arr}"
  arr
end
