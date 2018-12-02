current_frequency = 0
frequency_array = []
duplicate_found = false


  while duplicate_found == false do
    File.open("input.txt").each do |line|
      current_frequency += line.to_i

      if frequency_array.include?(current_frequency)
        puts "break from if being true"
        duplicate_found = true
        break
      else
        frequency_array.push(current_frequency)
      end

    end
  end

puts "First duplicate frequencey is #{current_frequency}"
