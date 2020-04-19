
def solve(a, b, c, x)
  count = 0
  (0..a).each do |i|
    (0..b).each do |j|
      (0..c).each do |k|
        count += 1 if i * 500 + j * 100 + k * 50 == x
      end
    end
  end
  count
end

a = gets.strip.to_i
b = gets.strip.to_i
c = gets.strip.to_i
x = gets.strip.to_i

puts solve(a, b, c, x)
