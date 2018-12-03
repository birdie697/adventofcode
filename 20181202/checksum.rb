
checksum_count_two = 0
checksum_count_three = 0

count_two = 0
count_three = 0

# input_string = 'biacnmelnizqygfsjoctvkwudr'

# starting_array = [
#   'abcdef',
#   'bababc',
#   'abbcde',
#   'abcccd',
#   'aabcdd',
#   'abcdee',
#   'ababab'
#   ]

File.open("input.txt").each do |input_string|

# starting_array.each do |input_string|

  count_two = 0
  count_three = 0

  input_array = input_string.chars.to_a
  unique_array = []

  input_array.each do |letter|
    if !unique_array.include?(letter)
      unique_array.push(letter)
    end
  end

  unique_array.each do |unique_letter|
    counter = 0

    input_array.each do |letter|
      if unique_letter == letter
        counter += 1
      end
    end

    if counter == 2 and count_two < 1
      count_two +=1
    elsif counter == 3 and count_three < 1
      count_three += 1
    end

  end

  checksum_count_two += count_two
  checksum_count_three += count_three

end

checksum = checksum_count_two*checksum_count_three

puts "checksum_count_two:  #{checksum_count_two}"
puts "checksum_count_three:  #{checksum_count_three}"
puts "checksum #{checksum}"
