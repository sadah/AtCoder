def solve(positions)
  ct, cx, cy = [0, 0, 0]
  positions.each do |position|
    t, x, y = position
    diff = (cx - x).abs + (cy - y).abs
    diff_t = t - ct
    if diff > diff_t
      return "No"
    elsif diff - diff_t == 0 || (diff - diff_t) % 2 == 0
      ct, cx, cy = position
    else
      return "No"
    end
  end
  return "Yes"
end

n = gets.strip.to_i
positions = []
n.times do
  positions.push(gets.strip.split.map(&:to_i))
end

puts solve(positions)
