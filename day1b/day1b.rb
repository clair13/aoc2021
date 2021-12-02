input = File.readlines('input.txt').each { |line| line.chomp }

data = input.map(&:to_i)

def find_number_of_sums(data)
  count = 0
  data.each_with_index do |depth, index|
    break if !data[index+1] || !data[index+2]

    window_measurement1 = depth.to_i + data[index+1].to_i + data[index+2].to_i
    window_measurement2 = data[index+1].to_i + data[index+2].to_i + data[index+3].to_i

    count +=1 if window_measurement1 < window_measurement2
  end
  puts count
end

find_number_of_sums(data)