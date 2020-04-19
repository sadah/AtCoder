def solve(array)
  count = 0

  while true do
    array.each do |a|
      return count if a.odd?
    end
    count += 1
    array = array.map{|a| a / 2 }
  end
end

n = gets.strip.to_i
array = gets.strip.split.map(&:to_i)

puts solve(array)
