expenses = {} 
File.foreach("day1_input.txt") { |line| expenses[line.to_i] = 1 }

def find_two_sum_multiple(h)
  h.each do |k, v|
    return (k * (2020 - k)) if h.key?(2020 - k)
  end
end

puts find_two_sum_multiple(expenses)
