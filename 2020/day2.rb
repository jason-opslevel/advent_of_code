count = 0

def check_policy(line)
  split_line = line.split(' ')
  min, max = split_line[0].split('-').map(&:to_i)
  letter = split_line[1][0]
  pass = split_line[2]

  letter_count = pass.count(letter)
  letter_count.between?(min, max)
end

File.foreach("day2_input.txt") { |line| count += 1 if check_policy(line) }

puts "Part 1: #{count}"
