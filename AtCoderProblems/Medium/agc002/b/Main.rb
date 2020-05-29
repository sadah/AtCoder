require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, M = gets_i_list

# list = gets_i_list

boxes = Array.new(N).map{ {count: 1, red: false}}
boxes[0][:red] = true

M.times do
  x, y = gets_i_list
  x = x - 1
  y = y - 1

  boxes[y][:count] += 1
  boxes[y][:red] = boxes[x][:red] || boxes[y][:red]

  boxes[x][:count] -= 1
  if boxes[x][:count] == 0
    boxes[x][:red] = false
  end
end

count = 0
boxes.each do |h|
  count += 1 if h[:red]
end

puts count