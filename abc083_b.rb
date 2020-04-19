def solve(n, a, b)
  (1..n).map do |i|
    sum = i.to_s.split("").map(&:to_i).inject(:+)
    i if sum >= a && sum <= b
  end.compact.inject(:+)
end

n = gets.strip
array = gets.strip.split.map(&:to_i)

puts solve(n, a, b)
