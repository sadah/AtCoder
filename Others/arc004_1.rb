def solve(n, array)
  edges = array.combination(2)
  edges.map do |e|
    p1 = e[0]
    p2 = e[1]
    Math.sqrt((p1[0] - p2[0])**2 + (p1[1] - p2[1])**2)
  end.max
end

n = gets.strip.to_i
array = []
n.times do
  array.push(gets.strip.split.map(&:to_i))
end
puts solve(n, array)
