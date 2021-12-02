input = File.readlines('input.txt').each { |line| line.chomp }

data = input.map(&:to_i)

def find_measurements(data)
  count = 0
  previous_measurement = data[0]
  data.each do |current_measurement|
      count +=1 if (current_measurement > previous_measurement)
      previous_measurement = current_measurement
  end
  puts count
end

find_measurements(data)




