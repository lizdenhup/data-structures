#!/usr/bin/env ruby

# Implement the hash map interface yourself.
# Of course, the interface should support the following
# O(1) operations: search, insert, delete.
# Use separate chaining to deal with collisions.
# In this simple example keys will be single letters or integers

class HashMap
  ALPHABET_MAP = {"a"=>0, "b"=>1, "c"=>2, "d"=>3, "e"=>4, "f"=>5, "g"=>6, "h"=>7, "i"=>8, "j"=>9, "k"=>10, "l"=>11, "m"=>12, "n"=>13, "o"=>14, "p"=>15, "q"=>16, "r"=>17, "s"=>18, "t"=>19, "u"=>20, "v"=>21, "w"=>22, "x"=>23, "y"=>24, "z"=>25}

  def initialize
    @hash_table = []
  end

  def put(key, val)
    hashing_function(key)
  end

  def remove(key)
  end

  def get(key)
  end

  def get_random
  end

  private

  def hashing_function(input)
    if input.class == "String"
      ALPHABET_MAP[str] % 7
    else
      input % 7
    end
  end

end

# hm = HashMap.new
# puts "#{hm.put('a', 32)}"
