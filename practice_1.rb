def print(a, b, c, s)
  puts (a + b + c).to_s + " " + s
end

a = gets.strip.to_i
b, c = gets.strip.split.map(&:to_i)
s = gets.strip

print(a, b, c, s)
