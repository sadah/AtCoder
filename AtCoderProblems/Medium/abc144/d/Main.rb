require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

def gets_f_list()
  gets.chomp.split(" ").map(&:to_f)
end

a, b, x = gets_f_list

area = x / a
ha = 2 * area / b

if a >= ha
  theta = Math.atan(b/ha)
  ans = theta / Math::PI * 180
else
  area = a * b - area
  hb = 2 * area / a
  theta = Math.atan(hb/a)
  ans = theta / Math::PI * 180
end

puts sprintf("%10.9f", ans)
