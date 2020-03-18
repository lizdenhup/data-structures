#!/usr/bin/env ruby

class RemoveDuplicates
  attr_reader :nums

  def initialize(nums)
    @nums = nums
  end

  def remove_duplicates
    i = 0
    j = i + 1

    while i <= nums.length - 1
      j = i + 1
      while j <= nums.length - 1
        if nums[j] == nums[i]
          nums.delete_at(j)
        else
          break;
        end
      end
      i += 1
    end
    puts "#{nums}"
    nums
  end

end


RemoveDuplicates.new([0,0,1,1,1,2,2,3,3,4]).remove_duplicates
