puts "hello"

def pascal_calc(row_num)
  if row_num == 0
    return [1]
  end

  previous = pascal_calc(row_num - 1)

  ret = []

  (previous.length - 1).times do |i|
    ret.push (previous[i] + previous[i + 1])
  end

  return [1, ret, 1].flatten
end

def pascal(row_num)
  pascal_calc(row_num - 1)
end

puts pascal(21)
