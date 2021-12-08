class Submarine
  attr_reader :horizontal_position, :depth

  def initialize
    @horizontal_position = 0
    @depth = 0
  end

  def planned_course(course)
    course.each do |guide|
      method, number_of_units = guide.split(" ")
      self.send(method.to_sym, number_of_units.to_i)
    end
  end

  def forward(number_of_units)
    @horizontal_position += number_of_units
  end

  def down(number_of_units)
    @depth += number_of_units
  end

  def up(number_of_units)
    @depth -= number_of_units
  end
end

course = File.open("./input.txt").read.split("\n")
solution = Submarine.new
solution.planned_course(course)

horizontal_position = solution.horizontal_position
depth = solution.depth

puts "horizontal position: #{horizontal_position}"
puts "depth: #{depth}"
puts "final destination #{horizontal_position * depth}"