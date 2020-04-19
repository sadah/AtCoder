def solve(s)
  words = [
    "eraser",
    "erase",
    "dreamer",
    "dream",
  ]

  words.each do |word|
    s = s.gsub(word,"")
  end
  s.empty? ? "YES" : "NO"
end

s = gets.strip
puts solve(s)
