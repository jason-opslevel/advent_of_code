# Toboggan course

tree_map = File.readlines("day3_input.txt")

def traverse_tree_map(tree_map)
  x = 0
  trees = 0
  map_width = tree_map.first.length() - 1
  tree_map.each() do |line|
    if line[x % map_width] == '#'
      trees += 1
    end
    x += 3
  end
  trees
end

puts "Part 1: #{traverse_tree_map(tree_map)}"

def traverse_tree_map_parametric(tree_map, x_slope, y_slope)
  x = 0
  y = 0
  trees = 0
  map_width = tree_map.first.length() - 1
  map_length = tree_map.length() - 1

  (0..map_length).step(y_slope) do |i|
    line = tree_map[i]

    if line[x % map_width] == '#'
      trees += 1
    end

    x += x_slope
  end
  trees
end

multiple = 1
multiple *= traverse_tree_map_parametric(tree_map, 1, 1)
multiple *= traverse_tree_map_parametric(tree_map, 3, 1)
multiple *= traverse_tree_map_parametric(tree_map, 5, 1)
multiple *= traverse_tree_map_parametric(tree_map, 7, 1)
multiple *= traverse_tree_map_parametric(tree_map, 1, 2)

puts "Part 2: #{multiple}"

