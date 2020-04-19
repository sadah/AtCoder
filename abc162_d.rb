n = gets.strip.to_i
s = gets.strip.split("")

count = s.count("R") * s.count("G") * s.count("B")

(0...n).each do |i|
  ((i+1)...n).each do |j|
    k = j * 2 - i
    if k < n && i < j && j < k && s[i] != s[j] && s[i] != s[k] && s[j] != s[k]
      count -= 1
    end
  end
end
puts count
