# You can represent a 2d array of n rows and m columns
# by making an array with n spots. Each spot in the array
# contains an array with m items
#
def create_mat(n, m)
  Array.new (n) { Array.new(m, 0) }
end

def print_mat(mat)
  mat.each do |row|
    puts row.join(" ")
  end
end

INDICES = [[0,1],[1,1]]

def odd_cells(n, m, indices)

  indices.map do |pair|
    row, col = pair[0], pair[1]
    mat[row].collect! {|v| v+= 1}
    mat.each {|r| r[col] += 1}
  end

end

odd_cells(2, 3, INDICES)
