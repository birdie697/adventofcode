count_sum = 0

File.open("input.txt").each do |line|
  count_sum += line.to_i
end

puts "The resulting frequency is #{count_sum}"
