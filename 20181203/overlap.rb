
# input_array = [
# '#1 @ 1,3: 4x4',
# '#2 @ 3,1: 4x4',
# '#3 @ 5,5: 2x2'
# ]

# input_array = [
#   '#123 @ 3,2: 5x4'
# ]

matrix = {}

# input_array.each do |input_string|

File.open("input.txt").each do |input_string|

  find_at_sign = input_string.index('@')
  find_comma = input_string.index(',')
  find_colon = input_string.index(':')
  find_x = input_string.index('x')
  end_of_string = input_string.length

  left_edge = input_string[find_at_sign+1 .. find_comma-1].to_i + 1
  top_edge = input_string[find_comma+1 .. find_colon-1].to_i + 1
  width = input_string[find_colon+1 .. find_x-1].to_i
  height = input_string[find_x+1 .. end_of_string].to_i

  right_edge = left_edge + width - 1
  bottom_edge = top_edge + height - 1

  row_counter = top_edge
  while row_counter <= bottom_edge do

    column_counter = left_edge

    while column_counter <= right_edge do

      if row_counter >= top_edge and row_counter <= bottom_edge and
         column_counter >= left_edge and column_counter <= right_edge and
         (matrix["#{column_counter},#{row_counter}"] == 1 or
          matrix["#{column_counter},#{row_counter}"] == 0)
        matrix["#{column_counter},#{row_counter}"] = 1
      elsif row_counter >= top_edge and row_counter <= bottom_edge and
            column_counter >= left_edge and column_counter <= right_edge and
            (matrix["#{column_counter},#{row_counter}"] == "." or
             matrix["#{column_counter},#{row_counter}"].nil?)
        matrix["#{column_counter},#{row_counter}"] = 0
      elsif matrix["#{column_counter},#{row_counter}"].nil?
        matrix["#{column_counter},#{row_counter}"] = "."
      end #if

      column_counter += 1
    end #column_counter

    row_counter += 1
  end  #row_counter

end #each loop

# puts "#{matrix}"

values_array = matrix.values

values_array.keep_if { |x| x == 1}

puts "#{values_array.count}"
