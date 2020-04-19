def print(a)
  puts a.split("").map(&:to_i).count(1)
end

a = gets.strip

print(a)
