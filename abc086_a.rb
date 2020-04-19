def print(a, b)
  puts (a * b).odd? ? "Odd" : "Even"
end

a, b = gets.strip.split.map(&:to_i)

print(a, b)
