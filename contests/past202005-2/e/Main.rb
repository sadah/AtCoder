require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 無向グラフ
# { 0 => [0,1,2,3,4,], 1 => [0,1,2,3,4,], ...}
def createUndirectedGraph(from_to_list)
  graph = Hash.new{[]}
  from_to_list.each do |from, to|
    a = graph[from]
    b = graph[to]
    graph[from] = a.push(to).uniq.sort
    graph[to]   = b.push(from).uniq.sort
  end
  graph
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
N, M, Q = gets_i_list

from_to_list = []
M.times do
  from_to_list.push gets_i_list
end
graph = createUndirectedGraph from_to_list

colors = [0] + gets_i_list
dpp colors

Q.times do
  query = gets_i_list
  if query.first == 1
    current = query[1]
    ccolor = colors[current]
    puts ccolor
    targets = graph[current]
    targets.each do |i|
      colors[i] = ccolor
    end
  else
    x, y = query[1], query[2]
    puts colors[x]
    colors[x] = y
  end
end
