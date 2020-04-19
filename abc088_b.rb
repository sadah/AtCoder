
def solve(array)
  allice = []
  bob = []
  array.sort.reverse.each_with_index do |e, i|
    i.even? ? allice.push(e) : bob.push(e)
  end
  allice.inject(:+) - bob.inject(:+)
end

n = gets.strip
array = gets.strip.split.map(&:to_i)

puts solve(array)
