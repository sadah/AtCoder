n = gets.strip.to_i
total = 0
(0..n).each do |i|
  if i % 15 == 0 || i % 5 == 0 || i % 3 == 0
  else
    total += i
  end
end
puts total
