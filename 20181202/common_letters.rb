# starting_array = [
#   'abcde',
#   'fghij',
#   'klmno',
#   'pqrst',
#   'fguij',
#   'axcye',
#   'wvxyz'
#   ]

starting_array = []
File.open("input.txt").each do |input_string|
  starting_array << input_string
end

first_loop_index = 0
second_loop_index = 0
box_match = false

first_string = ''
second_string = ''

while first_loop_index < starting_array.count do
second_loop_index = first_loop_index + 1

  while second_loop_index < starting_array.count do
    i = 0
    mismatch_counter = 0

    while i < starting_array[first_loop_index].length do
      if starting_array[first_loop_index][i] != starting_array[second_loop_index][i]
        mismatch_counter += 1
      end
      i += 1
    end

    if mismatch_counter == 1
      box_match = true
      first_string = starting_array[first_loop_index]
      second_string = starting_array[second_loop_index]
      break
    end

    second_loop_index += 1
  end

  if box_match == true
    break
  else
    first_loop_index += 1
  end

end

winning_letters = ''
i = 0

while i < first_string.length do
  if first_string[i] == second_string[i]
    winning_letters << first_string[i]
  end
  i += 1
end

puts winning_letters
