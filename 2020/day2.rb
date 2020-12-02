count = 0

def check_policy(line)
  split_line = line.split(' ')
  min, max = split_line[0].split('-').map(&:to_i)
  letter = split_line[1][0]
  pass = split_line[2]
  #puts "#{min} #{max} #{letter} #{pass}"

  letter_count = pass.split("").reduce(0) { |sum, l| 
    return sum + 1 if l == letter
    sum
  }
  puts letter_count
end

File.foreach("day2_input.txt") { |line| check_policy(line) }

puts "Part 1: #{count}"
