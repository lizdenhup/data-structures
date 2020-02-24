#!/usr/bin/env ruby

def to_binary(n)
  return n.to_s if n == 0 || n == 1
  div, mod = n.divmod(2)
  to_binary(div) + mod.to_s
end

def num_1s(b)
  b.split("").map(&:to_i).reduce(:+)
end

def bit_sort(arr)
  output = Hash.new{|hsh, k| hsh[k] = []}
  arr.each do |item|
    puts "item #{item}, to_b(item), #{to_binary(item)}, num_1s, #{num_1s(to_binary(item))}"
    insert_i = num_1s(to_binary(item))
    # what is the right data structure? We want the index position of the DS to indicate
    # the number of zeros. Then we want the DS to point to a sorted list
    output[insert_i] << item
  end
  result = []
  puts "output, #{output}"
  output = output.sort.to_h
  output.each do |k,v|
    result << v.sort!
  end
  puts "result, #{result.flatten!}"
  result.flatten!
end

bit_sort([10,100,1000,10000])
