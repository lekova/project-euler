def sum_of_squares num
  memo = 1
  (1..num).reduce do |memo, current|
    memo += current ** 2
  end
end

def squares_sum num
  (1..num).reduce(:+) ** 2
end

def difference num
  squares_sum(num) - sum_of_squares(num)
end

puts sum_of_squares 10
puts squares_sum 10
puts difference 10
