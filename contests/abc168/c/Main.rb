require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# [a, b].min が遅いので
def min(a, b)
  return a < b ? a : b
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
A, B, H, M = gets_i_list

pi = Math::PI

h_pi = 2 * pi * (H.to_f/12 + M.to_f/720)
m_pi = 2 * pi * (M.to_f/60)

dpp [h_pi, m_pi]
dpp [(h_pi - m_pi).abs, 2 * pi - (h_pi - m_pi).abs]

d_pi = min((h_pi - m_pi).abs, 2 * pi - (h_pi - m_pi).abs)

dpp d_pi
dpp d_pi * (180.to_f/pi)
dpp Math.cos(d_pi)

# 浮動小数点数のフォーマット
ans = Math.sqrt(A ** 2 + B ** 2 - 2 * A * B * Math.cos(d_pi))
puts sprintf("%10.9f", ans)