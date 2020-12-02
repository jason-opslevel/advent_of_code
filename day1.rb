expenses = {} 
File.foreach("day1_input.txt") { |line| expenses[line.to_i] = 1 }

def find_two_sum_multiple(h)
  # Note: doesn't take into account duplicate keys
  h.each do |k, v|
    return (k * (2020 - k)) if h.key?(2020 - k)
  end
end

puts "Part 1: #{find_two_sum_multiple(expenses)}"


def find_three_sum_multiple(h)
  # Note: doesn't take into account duplicate keys
  # If we went with a sorted array, we could do a O(nlog(n) + n(n-k)) approach,
  # but as it stands just an O(n^2)
  h.each do |k, v|
    h.each do |k2, v2|
      return (k * k2 * (2020 - k - k2)) if h.key?(2020 - k - k2)
    end
  end   
end

puts "Part 2: #{find_three_sum_multiple(expenses)}"
