
# input_array = [
# '#1 @ 1,3: 4x4',
# '#2 @ 3,1: 4x4',
# '#3 @ 5,5: 2x2'
# ]


input_array = [
  '#123 @ 3,2: 5x4'
]

matrix = []

find_at_sign = input_array[0].index('@')
find_comma = input_array[0].index(',')
find_colon = input_array[0].index(':')
find_x = input_array[0].index('x')
end_of_string = input_array[0].length

left_edge = input_array[0][find_at_sign+1 .. find_comma-1].to_i + 1
top_edge = input_array[0][find_comma+1 .. find_colon-1].to_i + 1
width = input_array[0][find_colon+1 .. find_x-1].to_i
height = input_array[0][find_x+1 .. end_of_string].to_i

right_edge = left_edge + width - 1
bottom_edge = top_edge + height - 1

row_counter = 1
while row_counter <= bottom_edge do

  column_counter = 1
  row_array = []
  while column_counter <= right_edge do

    if row_counter >= top_edge and row_counter <= bottom_edge and
       column_counter >= left_edge and column_counter <= right_edge
      row_array << '#'
    else
      row_array << '.'
    end #if

    column_counter += 1
  end #column_counter
  matrix << row_array
  row_counter += 1
end  #row_counter

puts "#{matrix}"
