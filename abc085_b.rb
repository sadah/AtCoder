
def solve(array)
  array.uniq.size
end

n = gets.strip.to_i
array = []
n.times do
  array.push(gets.strip.to_i)
end

puts solve(array)
