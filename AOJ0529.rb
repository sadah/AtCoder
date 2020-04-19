def solve(n, m, array)
  max = 0
  array.push(0)
  half_sums = array.repeated_combination(2).to_a.map{|i|i.inject(:+)}.sort.reverse
  half_sums.each do |left|
    right = half_sums.bsearch do |r|
      r + left <= m
    end
    max = [max, left + right].max unless right.nil?
  end
  max
end

n, m = gets.strip.split.map(&:to_i)
array = []
n.times do
  array.push(gets.strip.to_i)
end
puts solve(n, m, array)
